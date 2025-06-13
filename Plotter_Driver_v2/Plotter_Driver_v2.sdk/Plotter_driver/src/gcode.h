#ifndef SRC_GCODE_H_
#define SRC_GCODE_H_

#include "globals.h"

typedef enum Command_Type
{
	Command_Invalid,
	Command_Move,
	Command_Home,
	Command_Set_Pen_State,
	Command_End,
} Command_Type;

typedef struct Command
{
	Command_Type type;
	v2 motion;
	b32 relative;
	b32 pen_state;
	b32 pen_state_changed;
} Command;

typedef enum Token_Type
{
	Token_Invalid,
} Token_Type;

typedef struct Token
{
	Token_Type type;
	String raw;
    f32 num;
} Token;

typedef struct Tokenizer
{
	String src;
	usize i;
} Tokenizer;

b32 is_whitespace(u8 c);
b32 is_number(u8 c);
ssize ssize_from_string(String str);
Command parse_command(Tokenizer *t);

#endif /* SRC_GCODE_H_ */
