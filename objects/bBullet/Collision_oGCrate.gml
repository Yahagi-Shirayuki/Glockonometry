with (other)
{
	LP -= other.dmg;
	hit_flash = 3;
	HitAngle = other.direction;
}

instance_destroy();