///@desc variables

setweapon = global.setweapon;
upgrade = global.upgrade;
for (t = 0; t < upgrade; t++)
{
	instance_create_layer(oPlayer.x+10,oPlayer.y, "Weapon",oPlayer.setweapon);
}