#include "globals.h"
#include "gcode.h"

b32 is_whitespace(u8 c)
{
	return (c == ' ') || (c == '\n') || (c == '\t') || (c == '\r');
}

b32 is_number(u8 c)
{
	return (c >= '0') && (c <= '9');
}

f32 f32_from_string(String str)
{
	b32 neg = false;
	usize num = 0;
    usize decimal = 0;
	usize i = 0;

	while (i < str.length && is_whitespace(str.data[i])) ++i;

	if (str.data[i] == '-')
	{
		neg = true;
		++i;
	}

	while (i < str.length && is_number(str.data[i]))
	{
		num *= 10;
		num += str.data[i] - '0';
		++i;
	}

    if (i < str.length && str.data[i] == '.')
    {
        ++i;
        while (i < str.length && is_number(str.data[i]))
        {
            ++i;
        }
    }

	return neg ? -(f32)num : (f32)num;
}

Token get_token(Tokenizer *t)
{
	Token tok = {0};

	while (t->i < t->src.length && is_whitespace(t->src.data[t->i])) ++t->i;

	if (t->src.data[t->i] == 'G')
	{
		usize start = t->i;
		++t->i;
		tok.type = 'G';
		tok.num = f32_from_string((String){.length=t->src.length-t->i, .data=t->src.data+t->i});
		while (t->i < t->src.length && !is_whitespace(t->src.data[t->i])) ++t->i;

		tok.raw = (String){.length=t->i-start, .data=t->src.data+start};
		return tok;
	}
	if (t->src.data[t->i] == 'M')
	{
		usize start = t->i;
		++t->i;
		tok.type = 'M';
		tok.num = f32_from_string((String){.length=t->src.length-t->i, .data=t->src.data+t->i});
		while (t->i < t->src.length && !is_whitespace(t->src.data[t->i])) ++t->i;

		tok.raw = (String){.length=t->i-start, .data=t->src.data+start};
		return tok;
	}
	if (t->src.data[t->i] == 'X')
	{
		usize start = t->i;
		++t->i;
		tok.type = 'X';
		tok.num = f32_from_string((String){.length=t->src.length-t->i, .data=t->src.data+t->i});
		while (t->i < t->src.length && !is_whitespace(t->src.data[t->i])) ++t->i;

		tok.raw = (String){.length=t->i-start, .data=t->src.data+start};
		return tok;
	}
	if (t->src.data[t->i] == 'Y')
	{
		usize start = t->i;
		++t->i;
		tok.type = 'Y';
		tok.num = f32_from_string((String){.length=t->src.length-t->i, .data=t->src.data+t->i});
		while (t->i < t->src.length && !is_whitespace(t->src.data[t->i])) ++t->i;

		tok.raw = (String){.length=t->i-start, .data=t->src.data+start};
		return tok;
	}
	if (t->src.data[t->i] == 'Z')
	{
		usize start = t->i;
		++t->i;
		tok.type = 'Z';
		tok.num = f32_from_string((String){.length=t->src.length-t->i, .data=t->src.data+t->i});
		while (t->i < t->src.length && !is_whitespace(t->src.data[t->i])) ++t->i;

		tok.raw = (String){.length=t->i-start, .data=t->src.data+start};
		return tok;
	}
	if (t->src.data[t->i] == 'F')
	{
		usize start = t->i;
		++t->i;
		tok.type = 'F';
		tok.num = f32_from_string((String){.length=t->src.length-t->i, .data=t->src.data+t->i});
		while (t->i < t->src.length && !is_whitespace(t->src.data[t->i])) ++t->i;

		tok.raw = (String){.length=t->i-start, .data=t->src.data+start};
		return tok;
	}

	return tok;
}

Command parse_command(Tokenizer *t)
{
	Command cmd = {0};
    cmd.motion = context.current_pos;

	Token tok = {0};

	do
	{
		tok = get_token(t);

		switch ((u8)tok.type)
		{
			case 'G': {
				switch ((int)tok.num)
				{
					case 28: {
						cmd.type = Command_Home;
						return cmd;
					} break;
					case 01:
					case 00: {
						cmd.type = Command_Move;
					} break;
				}
			} break;
			case 'M': {
				switch ((int)tok.num)
				{
					case 30: {
						cmd.type = Command_End;
						return cmd;
					} break;
				}
			} break;
			case 'X': {
				cmd.motion.x = tok.num;
			} break;
			case 'Y': {
				cmd.motion.y = tok.num;
			} break;
			case 'Z': {
				cmd.pen_state = tok.num == 0;
				cmd.pen_state_changed = true;
			} break;
			case 'F': break;
			default: break;
		}
	} while (tok.type);

	return cmd;
}
