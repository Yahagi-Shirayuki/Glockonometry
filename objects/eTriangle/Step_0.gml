/// @description Simple bouncing logic


image_angle += gvalue;
// Horizontal collision
if place_meeting(x + Hspd, y, oCollidable)
{
    while (!place_meeting(x + sign(Hspd), y, oCollidable))
    {
        x += sign(Hspd);
    }
	gvalue = random_range(-20,20);
    Hspd = -Hspd;
}

x += Hspd;

// Vertical collision
if (place_meeting(x, y + Vspd, oCollidable))
{
    while (!place_meeting(x, y + sign(Vspd), oCollidable))
    {
        y += sign(Vspd);
    }
	gvalue = random_range(-20,20);
    Vspd = -Vspd;
}

y += Vspd;

image_xscale = Size;
image_yscale = Size;