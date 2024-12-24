/// @desc update
#region // Control
if (hasctrl)
{
    left = keyboard_check(ord("A"));
    right = keyboard_check(ord("D"));
    jump = keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_space);
    down = keyboard_check(vk_down) || keyboard_check(ord("S"));

    // Movement
    var move = right - left;
    Hspd = move * walkspd;
    Vspd = Vspd + g;

    // Jump
    if (place_meeting(x, y + 1, oCollidable))
    {
        // On the ground, allow jumping if there's a buffered jump input
        if (jump_buffer > 0) && (jump)
        {
            Vspd = -JumpHeight;  // Perform jump
            jump_buffer = 0;     // Clear buffer after jumping
        }
        else
        {
            jump_buffer = jump_buffer_max;  // Reset jump buffer time when grounded
        }
    }
    else
    {
        // Decrement jump buffer when in the air to account for time
        if (jump_buffer > 0)
        {
            jump_buffer--;
        }
    }
} 
else 
{
    right = 0;
    left = 0;
    jump = 0;
    down = 0; 
}
#endregion

#region // Collision
// Horizontal collision
if place_meeting(x + Hspd, y, oCollidable)
{
    while (!place_meeting(x + sign(Hspd), y, oCollidable))
    {
        x += sign(Hspd);
    }
    Hspd = 0;
}

x += Hspd;

// Vertical collision
if (place_meeting(x, y + Vspd, oCollidable))
{
    while (!place_meeting(x, y + sign(Vspd), oCollidable))
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
    // If not grounded and jumping
    sprite_index = sPlayerA;
    image_speed = 0;  // Stop animation while jumping/falling

    if (Vspd < 0) {
        image_index = 0;  
    } else if (Vspd > 0) {
        image_index = 1; 
    }
} 
else  // If grounded
{
    image_speed = 1;  // Resume normal animation speed when on the ground
    sprite_index = sPlayerI;  // Idle sprite
}

if (Hspd != 0) image_xscale = sign(Hspd);
#endregion