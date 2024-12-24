if (LP <= 0)
{
	with(instance_create_layer(x,y,layer,SqurDed))
	{
		direction = other.HitAngle;
		Hspd = lengthdir_x(8,direction);
		Vspd = lengthdir_y(4,direction)-10;
		if (sign(Hspd)!=0) image_xscale = sign(Hspd) * other.Size;
		image_yscale = other.Size;
	}
	instance_destroy();
}
