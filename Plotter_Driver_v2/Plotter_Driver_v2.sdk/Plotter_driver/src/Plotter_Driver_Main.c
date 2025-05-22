#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_mem.h"
#include "xparameters.h"
#include "xil_io.h"
#include "globals.h"

Context context = {0};

Vec2 art[] = {
	(Vec2){0,0},
	(Vec2){0,50},
	(Vec2){50,50},
	(Vec2){50,150},
	(Vec2){100,150},
	(Vec2){100,50},
	(Vec2){150,50},
	(Vec2){150,0},
	(Vec2){0,0},
};

b32 pens[] = {
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	1,
	0,
};

int main(void)
{
    init_platform();
    enable_motors(true);

    set_speed_max();

    fflush(stdin);

    /*
    f32 current_angle = 0;
    f32 angle_step = (PI32*2)/2000;
    f32 radius = 1000;
    */

    Mat2 scale = mat2_scale(SCALE);
    scale.row[1].y *= -1;
    Mat2 rot = mat2_rot(PI32/4);

    context.m = mat2_mul(scale, rot);

    //u32 ctr = 0, en_state = 1;

#define mm(x, y) move_motors_v(mat2_vec2_mul(context.m, (Vec2){(x), (y)}))

    while(1)
    {
    	set_pen_state(false);
    	home_motors();

    	for (u32 i = 0; i < ArrayCount(art); ++i)
    	{
    		set_pen_state(pens[i]);
    		move_motors_v(mat2_vec2_mul(context.m, vec2_sub(art[i], context.current_pos)));
    		context.current_pos = art[i];
    	}

    	enable_motors(false);

    	while(1);

    	/*while (1)
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
    	}*/
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
