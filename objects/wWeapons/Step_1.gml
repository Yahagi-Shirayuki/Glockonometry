// set up
if (instance_exists(oPlayer)) {
    x = oPlayer.x + 10; // Update weapon position relative to player
    y = oPlayer.y;
} else {
    var weapon = instance_find(wWeapons, 0); // Find the first instance of wWeapons
    if (weapon != noone) {
        instance_destroy(weapon); // Destroy the found weapon instance
    }
    return;
}
image_angle = point_direction(x,y,mouse_x, mouse_y);

// Extra
x -= lengthdir_x(Recoil, image_angle);
y -= lengthdir_y(Recoil, image_angle);

if (image_angle > 90) && (image_angle < 270) && (instance_exists(oPlayer)) 
{
	x = oPlayer.x - 10;
	image_yscale = -1;
} else {
	image_yscale = 1;
}