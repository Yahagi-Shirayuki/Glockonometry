// move
Vspd = Vspd + g;

// Ledge Fall
if (grounded) && (Ledgefall) && (!place_empty(x+Hspd,y+1,oCollidable))
{
	Hspd = -Hspd;
}


#region //Collision
// horizon collision
if place_meeting(x+Hspd,y,oCollidable)
{
	while(!place_meeting(x+sign(Hspd),y,oCollidable))
	{
		x += sign(Hspd);
	}
	Hspd = -Hspd;
}

x += Hspd;

// vertical collision
if place_meeting(x,y+Vspd,oCollidable)
{
	while(!place_meeting(x,y+sign(Vspd),oCollidable))
	{
		y += sign(Vspd);
	}
	Vspd = 0;
}

y += Vspd;

#endregion

#region // Animation
if (!place_meeting(x, y + 1, oCollidable))
{
	grounded = false;
    sprite_index = sSqurA;
    image_speed = 0;  

    if (Vspd < 0) {
        image_index = 0;  
    } else if (Vspd > 0) {
        image_index = 1; 
    }
} 
else  // If grounded
{
	grounded = true;
    image_speed = 1; 
	sprite_index = sSqurI;

}

event_inherited();
#endregion


