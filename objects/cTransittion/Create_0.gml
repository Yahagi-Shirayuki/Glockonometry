/// @description Size Variable and move

w = display_get_gui_width();
h = display_get_gui_height();
half_h = h * 0.5;
half_w = w * 0.5;

minlenght = 1.5;
maxlenght = 0;
tSpd = 15; //higher = slower

enum TRANS_MODE
{
	OFF,
	NEXT,
	GOTO,
	RESTART,
	INTRO
}

mode = TRANS_MODE.INTRO;
percent = 1;
target = room;