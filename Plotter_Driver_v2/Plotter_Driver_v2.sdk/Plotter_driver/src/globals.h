#ifndef GLOBALS_H
#define GLOBALS_H

#include <stdint.h>
#include <stddef.h>

#define SCALE (1000.f/69.f)   	// a ratio of steps/millimeter
#define MOTOR_COOLDOWN_FASTEST 30000
#define MOTOR_COOLDOWN_DEFAULT 100000
#define MOTOR_COOLDOWN_HOMING 120000
#define SERVO_DELAY 30000000

#define MOTOR_ROTATION 400

#define MOTOR_BASE ((u32*)(0x43C00000))
#define MOTOR_ENABLE_BIT (1 << 4)

#define MOTOR_A_STEP_BIT (1 << 0)
#define MOTOR_A_DIR_BIT  (1 << 1)
#define MOTOR_B_STEP_BIT (1 << 2)
#define MOTOR_B_DIR_BIT  (1 << 3)

#define MOTOR_SERVO_BIT (1<<5)

#define LIMIT_SWITCH_A_BIT (1<<0)
#define LIMIT_SWITCH_B_BIT (1<<1)

#define PI32 3.1415926535897932384626433f

typedef uint8_t u8;

typedef int32_t s32;
typedef uint32_t u32;
typedef u32 b32;
typedef float f32;

typedef size_t usize;
typedef ptrdiff_t ssize;

#ifndef true
#define true (1)
#endif

#ifndef false
#define false (0)
#endif

#define Min(a,b) ((a) < (b) ? (a) : (b))
#define Abs(x) ((x) < 0 ? -(x) : (x))
#define ArrayCount(a) (sizeof(a)/sizeof(*(a)))

#define V2OP(a, b, op) ((v2){(a).x op (b).x, (a).y op (b).y})

extern u32 motor_state;

typedef struct v2
{
	f32 x, y;
} v2;

typedef struct m2
{
	v2 row[2];
} m2;

typedef struct Context
{
	v2 current_pos;
	u32 cooldown_timer;
	m2 m;
} Context;

typedef struct String
{
	usize length;
	u8 *data;
} String;

extern Context context;

void enable_motors(b32 state);
int compare_float(f32 f1, f32 f2);
f32 cos_n(f32 x);
f32 sin_n(f32 x);
void set_speed_max(void);
void set_speed(u32 speed);
void wait_for_motors();
b32 get_pen_state(void);
void set_pen_state(b32 down);
void step_motors(b32 a_dir, b32 b_dir, b32 a_step, b32 b_step);
void move_motors(b32 a_dir, b32 b_dir, u32 a_steps, u32 b_steps);
void move_motors_v(v2 motion);
void home_motors(void);

m2 m2_scale(f32 scale);
m2 m2_rot(f32 angle);
m2 m2_transpose(m2 m);
m2 m2_mul(m2 a, m2 b);
v2 m2_v2_mul(m2 m, v2 v);

v2 v2_sub(v2 a, v2 b);
v2 v2_add(v2 a, v2 b);
v2 v2_mul(v2 a, v2 b);
f32 v2_sum(v2 a);

usize cstr_len(char *Str);
usize string_cmp(String a, String b);

#endif
