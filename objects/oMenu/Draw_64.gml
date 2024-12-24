/// @description Draw menu

draw_set_font(fMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0; i < Mitems; i++)
{
	var offset = 10;
	var txt = Menu[i];
	if (Mcursor == i)
	{
		txt = string_insert(">", txt, 0);
		var col = c_white;
	} else {
		var col = c_dkgray
	}
	
	var xx = Mx;
	var yy = My - (Mitems_height*(i*1.5));
	draw_text(xx-16,yy,txt);
}