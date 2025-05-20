#define SCALE 100
#define MOTOR_COOLDOWN 32000

#define MOTOR_ROTATION (400)

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
