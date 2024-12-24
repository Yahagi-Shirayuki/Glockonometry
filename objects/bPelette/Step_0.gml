/// @description spin
// Check if gacha is true and set a random gvalue once
if (gacha)
{
    gvalue = random_range(-20, 20);
    gacha = false;
}

// Apply the rotation value to the image angle continuously
image_angle += gvalue;
