#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_mem.h"
#include "xparameters.h"
#include "xil_io.h"
#include "globals.h"

u32 motor_state = 0;

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

f32 cos_n(f32 x){
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

f32 sin_n(f32 x){return cos_n(x-PI32/2);}

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
			(Vec2){cos_n(angle), -sin_n(angle)},
			(Vec2){sin_n(angle), cos_n(angle)},
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

void set_speed_max(void)
{
	context.cooldown_timer = MOTOR_COOLDOWN_DEFAULT;
}

void set_speed(u32 speed)
{
	context.cooldown_timer = speed < MOTOR_COOLDOWN_DEFAULT ? MOTOR_COOLDOWN_DEFAULT : speed;
}

void wait_for_motors()
{
	for (u32 i = 0; i < context.cooldown_timer;++i);
}

void enable_motors(b32 state)
{
	motor_state = state ? motor_state | MOTOR_ENABLE_BIT : motor_state & ~MOTOR_ENABLE_BIT;
	MOTOR_BASE[0] = motor_state;
}

b32 get_pen_state(void)
{
	return (motor_state & MOTOR_SERVO_BIT) != MOTOR_SERVO_BIT;
}

void set_pen_state(b32 down)
{
	motor_state = !down ? motor_state | MOTOR_SERVO_BIT : motor_state & ~MOTOR_SERVO_BIT;
	MOTOR_BASE[0] = motor_state;

	for (u32 i = 0; i < SERVO_DELAY;++i);
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
	if (a_steps > b_steps)
	{
		u32 steps_per_step = b_steps ? a_steps/b_steps : 0;
		for (u32 i = 0; i < a_steps; ++i)
		{
			b32 b_step = false;
			if (steps_per_step) b_step = i % steps_per_step == 0;

			step_motors(a_dir, b_dir, true, b_step);
		}
	}
	else
	{
		u32 steps_per_step = a_steps ? b_steps/a_steps : 0;
		for (u32 i = 0; i < b_steps; ++i)
		{
			b32 a_step = false;
			if (steps_per_step) a_step = i % steps_per_step == 0;

			step_motors(a_dir, b_dir, a_step, true);
		}
	}
}

void move_motors_v(Vec2 motion)
{
	move_motors(motion.x < 0, motion.y < 0, (s32)Abs(motion.x), (s32)Abs(motion.y));
}

void home_motors(void)
{
#define mm(x, y) move_motors_v(mat2_vec2_mul(context.m, (Vec2){(x), (y)}))

	set_speed(MOTOR_COOLDOWN_HOMING);

	while ((MOTOR_BASE[0] & LIMIT_SWITCH_A_BIT) != LIMIT_SWITCH_A_BIT)
	{
		mm(-1, 0);
	}
	mm(1, 0);

	while ((MOTOR_BASE[0] & LIMIT_SWITCH_B_BIT) != LIMIT_SWITCH_B_BIT)
	{
		mm(0, -1);
	}
	mm(0, 1);

	context.current_pos = (Vec2){0};
	set_speed_max();

#undef mm
}
