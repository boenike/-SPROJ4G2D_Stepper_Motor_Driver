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

typedef struct Point
{
	Vec2 pos;
	b32 pen;
} Point;

Point art2[] = {
		{{20, 0}, 0},
		{{10, 10}, 1},
		{{10, 20}, 1},
		{{20, 30}, 1},
		{{30, 30}, 1},
		{{40, 20}, 1},
		{{40, 100}, 1},
		{{50, 110}, 1},
		{{60, 110}, 1},
		{{70, 100}, 1},
		{{70, 20}, 1},
		{{80, 30}, 1},
		{{90, 30}, 1},
		{{100, 20}, 1},
		{{100, 10}, 1},
		{{90, 0}, 1},
		{{20, 0,}, 1},

//		{{10, 10}, 0},
//		{{0, 10}, 1},
//		{{20, 20}, 0},
//		{{20, 30}, 1},
//		{{30, 20}, 0},
//		{{30, 30}, 1},
//		{{80, 20}, 0},
//		{{80, 30}, 1},
//		{{90, 20}, 0},
//		{{90, 30}, 1},
//		{{100, 10}, 0},
//		{{110, 10}, 1},
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
	1,
};

int main(void)
{
    init_platform();
    enable_motors(true);

    set_speed_max();

    fflush(stdin);

    Mat2 scale = mat2_scale(SCALE);
    Mat2 rot = mat2_rot(PI32/4);

    context.m = mat2_mul(scale, rot);

#define mm(x, y) move_motors_v(mat2_vec2_mul(context.m, (Vec2){(x), (y)}))

    while(1)
    {
    	set_pen_state(false);
    	home_motors();

    	mm(0, 50);

    	for (u32 i = 0; i < ArrayCount(art2); ++i)
    	{
    		if (art2[i].pen != get_pen_state()) set_pen_state(art2[i].pen);
    		Vec2 motion = vec2_sub(art2[i].pos, context.current_pos);
    		Vec2 motion2 = mat2_vec2_mul(context.m, motion);
    		move_motors_v(motion2);
    		context.current_pos = art2[i].pos;
    	}

    	set_pen_state(false);
		home_motors();

    	enable_motors(false);
    	set_pen_state(0);

    	while(1);
    }

#undef mm

    cleanup_platform();
    return 0;
}
