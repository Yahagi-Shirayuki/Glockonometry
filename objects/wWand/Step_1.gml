event_inherited();
/// @desc Bullet logic
Recoil = max(0, Recoil-1);
if (mouse_check_button(mb_left) && FireRate <= 0) {
	Recoil = 7;
    FireRate = 15; 
    with (instance_create_layer(x, y, "Bullet", bOrb)) {
        speed = 10;
        direction = other.image_angle + random_range(-3,3);
    }
}

