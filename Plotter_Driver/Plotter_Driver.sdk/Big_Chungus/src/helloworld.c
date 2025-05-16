/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
//#include <math.h>
#include "platform.h"
#include "xil_printf.h"
#include "xil_mem.h"
#include "xparameters.h"
#include "xil_io.h"

#define PI32 3.1415926535897932384626433f

typedef int32_t s32;
typedef uint32_t u32;
typedef u32 b32;
typedef float f32;

#ifndef true
#define true (1)
#endif

#ifndef false
#define false (0)
#endif

#define Abs(x) ((x) < 0 ? -(x) : (x))
#define ArrayCount(a) (sizeof(a)/sizeof(*(a)))

// The max we found is 24500
#define MOTOR_COOLDOWN 25000

#define MOTOR_ROTATION (400)

#define MOTOR_BASE ((u32*)(0x43C00000))
#define MOTOR_ENABLE_BIT (1 << 4)

#define MOTOR_A_STEP_BIT (1 << 0)
#define MOTOR_A_DIR_BIT  (1 << 1)
#define MOTOR_B_STEP_BIT (1 << 2)
#define MOTOR_B_DIR_BIT  (1 << 3)

#define MOTOR_SERVO_BIT (1<<5)

#define MOTOR_A_READY (1<<0)
#define MOTOR_B_READY (1<<1)

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
} context = {0};

void wait_for_motors()
{
#if 0
	u32 motor_ready;
	switch (motor_a)
	{
		case Motor_A: motor_ready = MOTOR_A_READY; break;
		case Motor_B: motor_ready = MOTOR_B_READY; break;
	}
	while (!((MOTOR_BASE[0] & motor_ready) == motor_ready));
//	for (int i = 0; i < 50000;++i);
#else
	for (int i = 0; i < MOTOR_COOLDOWN;++i);
#endif
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

int main()
{
    init_platform();

//    volatile unsigned int *motor = (volatile unsigned int *)0x43C000000;

    MOTOR_BASE[0] = motor_state;

    motor_state |= MOTOR_ENABLE_BIT;

    fflush(stdin);

    printf("Hello big chungus %d\n", 69);

    printf("Enter number of loops: ");
    int loop_count = 0;
//    scanf("%d", &loop_count);

//    printf("loop_count: %d\n", loop_count);

    f32 current_angle = 0;
    f32 angle_step = (PI32*2)/200;
    f32 radius = 1000;

    Mat2 scale = mat2_scale(10);
    Mat2 rot = mat2_rot(PI32/4);

    Mat2 m = mat2_mul(scale, rot);

    while (1)
    {
    	f32 new_x = cos(current_angle)*radius;
    	f32 new_y = sin(current_angle)*radius;

    	Vec2 new_pos = {new_x, new_y};

    	Vec2 current_pos_t = mat2_vec2_mul(m, context.current_pos);
    	Vec2 new_pos_t = mat2_vec2_mul(m, new_pos);

    	Vec2 motion = vec2_sub(new_pos_t, current_pos_t);
    	context.current_pos = new_pos;

    	move_motors_v(motion);

    	current_angle += angle_step;
    	if (current_angle > 2*PI32) current_angle -= 2*PI32;
    }

    print("Hello World\n\r");

    cleanup_platform();
    return 0;
}
