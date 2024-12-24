/// @description Update based on savefile

#macro SAVEFILE "save.sav"

// Ease in effect
Mx += (Mx_target - Mx) / Mspd;

// Menu Control
if (Mcrtl)
{
    if (keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W")))
    {
        Mcursor++;
        if (Mcursor >= Mitems) Mcursor = 0;
    }
    
    if (keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S")))
    {
        Mcursor--;
        if (Mcursor < 0) Mcursor = Mitems - 1;
    }
	if (keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space))
	{
		Mx_target = GUI_width + 200;
		Mcommited = Mcursor;
		Mcrtl = false;
	}

	var mouse_y_gui = device_mouse_y_to_gui(0);
	if ((mouse_y_gui < My) && (mouse_y_gui > Mtop))
	{
		Mcursor = (My - mouse_y_gui) div (Mitems_height * 1.5);
		if (mouse_check_button_pressed(mb_left))
		{
			Mx_target = GUI_width + 200;
			Mcommited = Mcursor;
			Mcrtl = false;
		}
	}
}

// Read the room ids
if (Mx > GUI_width + 150 && Mcommited != -1)
{
	switch (Mcommited)
	{
		case 2: 
			SlideTrans(TRANS_MODE.NEXT); 
			break;
		case 1: 
		{
			if (!file_exists(SAVEFILE))
			{
				SlideTrans(TRANS_MODE.NEXT);
			} 
			else 
			{
				var sfile = file_text_open_read(SAVEFILE);	
				var targetRoom = file_text_read_real(sfile);
				global.setweapon = file_text_read_real(sfile);
				global.upgrade = file_text_read_real(sfile);
				file_text_close(sfile);

				// Apply the saved weapon and upgrade to the player
				if (oPlayer.setweapon != global.setweapon)
				{
					instance_destroy(oPlayer.setweapon);
					oPlayer.setweapon = global.setweapon;
					instance_create_layer(oPlayer.x + 10, oPlayer.y, "Weapon", oPlayer.setweapon);
				}
				oPlayer.upgrade = global.upgrade;

				SlideTrans(TRANS_MODE.GOTO, targetRoom);
			}
		}
		break;
		case 0: 
			game_end(); 
			break;		
	}	
}