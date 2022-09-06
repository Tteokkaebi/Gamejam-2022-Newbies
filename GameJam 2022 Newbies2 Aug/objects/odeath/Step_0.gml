if (done == 0)
{
	vsp = vsp + grv;

	if (place_meeting (x + hsp, y, oBarrier))
	{
		while (!place_meeting(x + 2*sign(hsp), y, oBarrier))
		{
			x = x + sign(hsp);
		}
		hsp = 0;
	}
	x = x + hsp;

	if (place_meeting (x, y + vsp, oBarrier))
	{
		if (vsp > 0)
		{
			done = 1;
			image_speed = 0;
			image_index = 5;
		}
		while (!place_meeting(x, y + 2*sign(vsp), oBarrier))
		{
			y = y + sign(vsp);
		}
		vsp = 0;
	}
	y = y + vsp;
}

if (done == 1)
{
	instance_create_layer(global.respawnX,global.respawnY , layer, oRespawn);
	instance_destroy()
}