if (oC_RIGHT.count = 0 && oC_LEFT.count = 0 && oC_UP.count = 0 && oC_DOWN.count = 0)
{
	instance_create_layer(x, y, layer, oDeath);
	instance_destroy();
}

if (place_meeting (x, y, oSpikes))
{
	instance_create_layer(x + hsp, y, layer, oDeath);
	instance_destroy();
}
