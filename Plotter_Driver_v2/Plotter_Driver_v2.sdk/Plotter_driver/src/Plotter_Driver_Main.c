#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_mem.h"
#include "xparameters.h"
#include "xil_io.h"
#include "globals.h"
#include "gcode.h"

Context context = {0};

v2 art[] = {
	(v2){0,0},
	(v2){0,50},
	(v2){50,50},
	(v2){50,150},
	(v2){100,150},
	(v2){100,50},
	(v2){150,50},
	(v2){150,0},
	(v2){0,0},
};

typedef struct Point
{
	v2 pos;
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

int offset = 0;
char line[4096];

int read_line()
{
	char c;

	offset = 0;

	do
	{
		c = fgetc(stdin);
		line[offset++] = c;
	} while (c != '\n' && c != '\r');
	line[offset] = 0;

	return offset;
}

Tokenizer t = {0};

int main(void)
{
    init_platform();

    enable_motors(true);
    set_pen_state(false);

    set_speed_max();

    fflush(stdin);

    m2 scale = m2_scale(SCALE);
    m2 rot = m2_rot(PI32/4);

    context.m = m2_mul(scale, rot);

    home_motors();

#define mm(x, y) move_motors_v(m2_v2_mul(context.m, (v2){(x), (y)}))

    while (1)
    {
        int cmd_len = 0;
    	printf("a");
    	fflush(stdout);
    	if ((cmd_len = read_line()))
    	{
    		t.i = 0;
    		t.src = (String){.length=cmd_len, .data=(u8*)line};
    		Command cmd = parse_command(&t);

            switch (cmd.type)
            {
                case Command_Move: {
                    if (cmd.pen_state_changed) set_pen_state(cmd.pen_state);
                    v2 motion = v2_sub(cmd.motion, context.current_pos);
                    v2 motion_t = m2_v2_mul(context.m, motion);
                    move_motors_v(motion_t);
                    context.current_pos = cmd.motion;
                } break;
                case Command_Home: {
                    home_motors();
                } break;
                case Command_Set_Pen_State: {
                    set_pen_state(cmd.pen_state); 
                } break;
                case Command_End: {
                    set_pen_state(false);
                    home_motors();
                    enable_motors(false);
                } break;
            }
    	}
    }

    
    while(1);

#undef mm

    cleanup_platform();
    return 0;
}
