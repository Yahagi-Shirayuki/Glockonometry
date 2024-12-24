/// @description Enemy colide

with (wWeapons) instance_destroy();
instance_change(pDed,true);
	
direction = point_direction(other.x,other.y,x,y);
	
Hspd = lengthdir_x(8,direction);
Vspd = lengthdir_y(4,direction)-10;
if (sign(Hspd)!=0) image_xscale = sign(Hspd);
