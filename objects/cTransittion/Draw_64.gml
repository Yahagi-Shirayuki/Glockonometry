/// @description Draw transit box

if (mode != TRANS_MODE.OFF)
{
	draw_set_color(make_color_rgb(99, 155, 255));
	draw_rectangle(0,0,w,percent*half_h,false);
	draw_rectangle(0,h,w,h-(percent*half_h),false);
}
