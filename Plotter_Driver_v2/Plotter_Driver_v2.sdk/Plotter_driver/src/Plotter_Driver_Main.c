#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_mem.h"
#include "xparameters.h"
#include "xil_io.h"
#include "globals.h"

int compare_float(f32 f1, f32 f2)
{
	f32 precision = 0.0000000001f;
	if ((f1 - precision) < f2)
	{
		return -1;
	}
	else if ((f1 + precision) > f2)
	{
		return 1;
	}
	else
	{
		return 0;
	}
}

f32 cos(f32 x){
	if (x < 0.0f) x = -x;

	if (0 <= compare_float(x,2*PI32))
  	{
		do {
			x -= 2*PI32;
		}while(0 <= compare_float(x,2*PI32));
  	}

	if ((0 <= compare_float(x, PI32)) && (-1 == compare_float(x, 2*PI32)))
	{
		x -= PI32;
		return ((-1)*(1.0f - (x*x/2.0f)*( 1.0f - (x*x/12.0f) * ( 1.0f - (x*x/30.0f) * (1.0f - (x*x/56.0f )*(1.0f - (x*x/90.0f)*(1.0f - (x*x/132.0f)*(1.0f - (x*x/182.0f)))))))));
	}
	return 1.0f - (x*x/2.0f)*( 1.0f - (x*x/12.0f) * ( 1.0f - (x*x/30.0f) * (1.0f - (x*x/56.0f )*(1.0f - (x*x/90.0f)*(1.0f - (x*x/132.0f)*(1.0f - (x*x/182.0f)))))));
}

f32 sin(f32 x){return cos(x-PI32/2);}

#define VecOp(a, b, op) ((Vec2){(a).x op (b).x, (a).y op (b).y})

typedef struct Vec2
{
	f32 x, y;
} Vec2;
Vec2 vec2_sub(Vec2 a, Vec2 b)
{
	return VecOp(a,b,-);
}
Vec2 vec2_add(Vec2 a, Vec2 b)
{
	return VecOp(a,b,+);
}
Vec2 vec2_mul(Vec2 a, Vec2 b)
{
	return VecOp(a,b,*);
}

f32 vec2_sum(Vec2 a)
{
	return a.x+a.y;
}

typedef struct Mat2
{
	Vec2 row[2];
} Mat2;

Mat2 mat2_scale(f32 scale)
{
	return (Mat2){
		(Vec2){scale, 0},
		(Vec2){0, scale},
	};
}

Mat2 mat2_rot(f32 angle)
{
	Mat2 m = {
			(Vec2){cos(angle), -sin(angle)},
			(Vec2){sin(angle), cos(angle)},
	};
	return m;
}

Mat2 mat2_transpose(Mat2 m)
{
	return (Mat2){
		(Vec2){m.row[0].x, m.row[1].x},
		(Vec2){m.row[0].y, m.row[1].y},
	};
}

Mat2 mat2_mul(Mat2 a, Mat2 b)
{
	Mat2 a_t = mat2_transpose(a);
	Mat2 res = {0};

	res.row[0].x = vec2_sum(vec2_mul(a_t.row[0], b.row[0]));
	res.row[0].y = vec2_sum(vec2_mul(a_t.row[1], b.row[0]));
	res.row[1].x = vec2_sum(vec2_mul(a_t.row[0], b.row[1]));
	res.row[1].y = vec2_sum(vec2_mul(a_t.row[1], b.row[1]));

	return res;
}

Vec2 mat2_vec2_mul(Mat2 m, Vec2 v)
{
	f32 vals[2];
	for (s32 i=0; i<ArrayCount(m.row);++i)
	{
		Vec2 temp = vec2_mul(v, m.row[i]);
		vals[i] = temp.x+temp.y;
	}

	return (Vec2){vals[0], vals[1]};
}

u32 motor_state = 0;

struct
{
	Vec2 current_pos;
	u32 cooldown_timer;
	Mat2 m;
} context = {0};

void set_speed_max(void)
{
	context.cooldown_timer = MOTOR_COOLDOWN;
}

void set_speed(u32 speed)
{
	context.cooldown_timer = speed < MOTOR_COOLDOWN ? MOTOR_COOLDOWN : speed;
}

void wait_for_motors()
{
	for (int i = 0; i < context.cooldown_timer;++i);
}

void set_pen_state(b32 down)
{
	if (down)
	{
		motor_state |= MOTOR_SERVO_BIT;
		MOTOR_BASE[0] = motor_state;
	}
	else
	{
		motor_state &= ~MOTOR_SERVO_BIT;
		MOTOR_BASE[0] = motor_state;
	}
}

void step_motors(b32 a_dir, b32 b_dir, b32 a_step, b32 b_step)
{
	if (a_dir) motor_state |= MOTOR_A_DIR_BIT;
	else motor_state &= ~MOTOR_A_DIR_BIT;

	if (b_dir) motor_state |= MOTOR_B_DIR_BIT;
	else motor_state &= ~MOTOR_B_DIR_BIT;

	if (a_step) motor_state |= MOTOR_A_STEP_BIT;
	else motor_state &= ~MOTOR_A_STEP_BIT;

	if (b_step) motor_state |= MOTOR_B_STEP_BIT;
	else motor_state &= ~MOTOR_B_STEP_BIT;

	MOTOR_BASE[0] = motor_state;
	wait_for_motors();

	if (a_step) motor_state &= ~MOTOR_A_STEP_BIT;

	if (b_step) motor_state &= ~MOTOR_B_STEP_BIT;

	MOTOR_BASE[0] = motor_state;
	wait_for_motors();
}

void move_motors(b32 a_dir, b32 b_dir, u32 a_steps, u32 b_steps)
{
	b32 flip = a_steps > b_steps;
	if (flip)
	{
		u32 temp = a_steps;
		a_steps = b_steps;
		b_steps = temp;
	}

	u32 steps_per_step = b_steps/a_steps;
	for (u32 i = 0; i < b_steps; ++i)
	{
		b32 a_step = i % steps_per_step == 0;

		step_motors(a_dir, b_dir, flip ? true : a_step, flip ? a_step : true);
	}
}

void move_motors_v(Vec2 motion)
{
	move_motors(motion.x < 0, motion.y < 0, (s32)Abs(motion.x), (s32)Abs(motion.y));
}

void home_motors(void)
{
#define mm(x, y) move_motors_v(mat2_vec2_mul(context.m, (Vec2){(x), (y)}))

	set_speed(HOMING_SPEED);

	while (MOTOR_BASE[0] & LIMIT_SWITCH_A_BIT)
	{
		mm(-1, 0);
	}
	mm(1, 0);

	while (MOTOR_BASE[0] & LIMIT_SWITCH_B_BIT)
	{
		mm(0, -1);
	}
	mm(0, 1);

	context.current_pos = (Vec2){0};
	set_speed_max();

#undef mm
}

int main()
{
    init_platform();

//    volatile unsigned int *motor = (volatile unsigned int *)0x43C000000;

    motor_state |= MOTOR_ENABLE_BIT;
    MOTOR_BASE[0] = motor_state;

    set_speed_max();

    fflush(stdin);

    printf("Hello big chungus %d\n", 69);

    printf("Enter number of loops: ");
    int loop_count = 0;
//    scanf("%d", &loop_count);

//    printf("loop_count: %d\n", loop_count);

    /*
    f32 current_angle = 0;
    f32 angle_step = (PI32*2)/2000;
    f32 radius = 1000;
    */

    Mat2 scale = mat2_scale(SCALE);
    Mat2 rot = mat2_rot(PI32/4);

    context.m = mat2_mul(scale, rot);
    
    //b32 servo_down = false;

    u32 ctr = 0, en_state = 1;

#define mm(x, y) move_motors_v(mat2_vec2_mul(context.m, (Vec2){(x), (y)}))

    while(1)
    {
    	home_motors();

    	while (1)
    	{
			mm(100, 0);
			mm(-100, 0);

			mm(0, 100);
			mm(0, -100);

			mm(100, 100);
			mm(-100, 100);
			mm(-100, -100);
			mm(100, -100);

			// Short test of EN
			ctr++;
			if (2 == ctr) {
				ctr = 0;
				en_state = !en_state;
				motor_state = en_state > 0 ? motor_state | MOTOR_ENABLE_BIT : motor_state & ~MOTOR_ENABLE_BIT;
				MOTOR_BASE[0] = motor_state;
			}
    	}
    }

#undef mm
//    while (1)
//    {
//    	f32 new_x = cos(current_angle)*radius;
//    	f32 new_y = sin(current_angle)*radius;
//
//    	Vec2 new_pos = {new_x, new_y};
//
//    	Vec2 current_pos_t = mat2_vec2_mul(m, context.current_pos);
//    	Vec2 new_pos_t = mat2_vec2_mul(m, new_pos);
//
//    	Vec2 motion = vec2_sub(new_pos_t, current_pos_t);
//    	context.current_pos = new_pos;
//
//    	move_motors_v(motion);
//
//    	current_angle += angle_step;
//    	if (current_angle > 2*PI32){
//    		servo_down = !servo_down;
//    		set_pen_state(servo_down);
//    		current_angle -= 2*PI32;
//    	}
//    }

    cleanup_platform();
    return 0;
}
