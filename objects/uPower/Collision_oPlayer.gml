/// @description machine gun Pickup 

// Destroy the pickup object
instance_destroy();
switch(image_index)
{
	case 0:
		if (oPlayer.setweapon != wWand)
		{
			instance_destroy(oPlayer.setweapon);
			oPlayer.setweapon = wWand;
			instance_create_layer(oPlayer.x+10,oPlayer.y,"Weapon", oPlayer.setweapon);
			oPlayer.upgrade = 1;
		} else {
			instance_create_layer(oPlayer.x+10,oPlayer.y,"Weapon", wWand);
			oPlayer.upgrade++;
		}
		break;
	case 1:
		if (oPlayer.setweapon != wMG)
		{
			instance_destroy(oPlayer.setweapon);
			oPlayer.setweapon = wMG;
			instance_create_layer(oPlayer.x+10,oPlayer.y,"Weapon", oPlayer.setweapon);
			oPlayer.upgrade = 1;
		} else {
			instance_create_layer(oPlayer.x+10,oPlayer.y,"Weapon", wMG);
			oPlayer.upgrade++;
		}
		break;
	case 2:
		show_debug_message("2")
		break;
	case 3:
		show_debug_message("3")
		break;
}

