/// @description Insert description here
if (gacha)
{
	Hspd = irandom_range(-3, 3);
	Vspd = irandom_range(-3, 3);
	gvalue = random_range(-20,20);
	gacha = false;
}
if (LP <= 0)
{
	with(instance_create_layer(x,y,layer,TriDed))
	{
		direction = other.HitAngle;
		Hspd = lengthdir_x(8,direction);
		Vspd = lengthdir_y(4,direction)-10;
		image_xscale = sign(Hspd)* other.Size;
		image_yscale = other.Size;
	}
	instance_destroy();
}


