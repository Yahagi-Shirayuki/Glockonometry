/// @description GUI/Var/Menu setup

GUI_width = display_get_gui_width();
GUI_height = display_get_gui_height();
GUI_margin = 32;

Mx = GUI_width + 200;
My = GUI_height - GUI_margin;
Mx_target = GUI_width - GUI_margin;
Mspd = 25; //lower = faster
Mfont = fMenu;
Mitems_height = font_get_size(fMenu);
Mcommited = -1;
Mcrtl = true;

Menu[2] = "New game";
Menu[1] = "Continue";
Menu[0] = "Quit";

Mcursor = 2;

Mitems = array_length(Menu)

Mtop = My - ((Mitems_height * 1.5) * Mitems);