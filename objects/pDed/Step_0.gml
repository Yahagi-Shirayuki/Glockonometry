if (rip == 0)
{
    // Move
    Vspd = Vspd + g;

    // Horizon collision
    if (place_meeting(x + Hspd, y, oCollidable))
    {
        while (!place_meeting(x + sign(Hspd), y, oCollidable))
        {
            x += sign(Hspd);
        }

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

        Vspd = -Vspd; 
    }

    // Apply vertical damping
    if (Vspd != 0)
    {
		
		
        // Slow down vertically over time
        Vspd *= 0.95; // Reduces vertical speed by 5% each step
        if (abs(Vspd) < 0.1)
        {
            Vspd = 0;
        }
    }

    y += Vspd;

    // Graphic adjustments:
    if (Hspd != 0) 
    {
        image_xscale = sign(Hspd); // Flip horizontally based on horizontal speed
    }

    // Spin the sprite based on horizontal movement direction
    if (Hspd > 0)
    {
        // Spin counterclockwise (for rightward movement)
        image_angle -= 20;
    }
    else if (Hspd < 0)
    {
        // Spin clockwise (for leftward movement)
        image_angle += 20;
    }

    // Fade the sprite over time
    image_alpha -= 0.04;
    if (image_alpha <= 0)
    {
		rip = 1;
        image_alpha = 0;
		alarm[0] = 30;
    }
}
