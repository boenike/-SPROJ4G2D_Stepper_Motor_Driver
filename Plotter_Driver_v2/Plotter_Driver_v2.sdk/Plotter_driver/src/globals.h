#define SCALE (1000.f/69.f)   	// a ratio of steps/millimeter
#define MOTOR_COOLDOWN_FASTEST 30000
#define MOTOR_COOLDOWN_DEFAULT 50000
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

#define VecOp(a, b, op) ((Vec2){(a).x op (b).x, (a).y op (b).y})

extern u32 motor_state;

typedef struct Vec2
{
	f32 x, y;
} Vec2;

typedef struct Mat2
{
	Vec2 row[2];
} Mat2;

typedef struct Context
{
	Vec2 current_pos;
	u32 cooldown_timer;
	Mat2 m;
} Context;

extern Context context;

void enable_motors(b32 state);
int compare_float(f32 f1, f32 f2);
f32 cos_n(f32 x);
f32 sin_n(f32 x);
void set_speed_max(void);
void set_speed(u32 speed);
void wait_for_motors();
void set_pen_state(b32 down);
void step_motors(b32 a_dir, b32 b_dir, b32 a_step, b32 b_step);
void move_motors(b32 a_dir, b32 b_dir, u32 a_steps, u32 b_steps);
void move_motors_v(Vec2 motion);
void home_motors(void);

Mat2 mat2_scale(f32 scale);
Mat2 mat2_rot(f32 angle);
Mat2 mat2_transpose(Mat2 m);
Mat2 mat2_mul(Mat2 a, Mat2 b);
Vec2 mat2_vec2_mul(Mat2 m, Vec2 v);

Vec2 vec2_sub(Vec2 a, Vec2 b);
Vec2 vec2_add(Vec2 a, Vec2 b);
Vec2 vec2_mul(Vec2 a, Vec2 b);
f32 vec2_sum(Vec2 a);

