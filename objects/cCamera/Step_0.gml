/// @description Update camera


// Destination update
if (instance_exists(follow))
{
	xTo = follow.x;	
	yTo = follow.y;
}

// Object posittion update

x += (xTo - x) / 25;
y += (yTo - y) / 25;

x = clamp(x, half_w_view,room_width - half_w_view);
y = clamp(y, half_h_view,room_height - half_h_view);


// Cam view update
camera_set_view_pos(cam, x - half_w_view, y - half_h_view);