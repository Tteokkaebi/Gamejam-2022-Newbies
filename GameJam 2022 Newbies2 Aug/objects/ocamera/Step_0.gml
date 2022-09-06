/// @description update camera

if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
}
//checks if follow exists, and grabs its x and y values

x += (xTo - x) / 25;
y += (yTo - y) / 25;
//subtracting current position from desired position, brings us 1/25 distance towards (xTo, yTo)

x = clamp(x, view_w_half, room_width - view_h_half);
//confines camera to room

camera_set_view_pos(cam, x - view_w_half, y - view_h_half);
//centers player in viewport






