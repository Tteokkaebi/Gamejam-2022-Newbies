
if (image_index >= 7)
{
	instance_create_layer(x, y, layer, oPlayer);
	instance_destroy(oCamera);
	instance_create_layer(x,y,layer,oCamera);
	instance_destroy();
	_U = global.rightCards
	_D = global.downCards
	_L = global.leftCards
	_R = global.rightCards
	
	while((oC_UP.count + oC_DOWN.count + oC_LEFT.count + oC_UP.count < global.roomHandSize && (_R + _L +_U + _D) >0)){
			if(oC_UP.count + oC_DOWN.count + oC_LEFT.count + oC_UP.count<global.roomHandSize && _U >0){
			oC_UP.count += sign(_U)
			_U --
			max(_U,0)
			}
			if(oC_UP.count + oC_DOWN.count + oC_LEFT.count + oC_UP.count<global.roomHandSize && _R >0){
				oC_RIGHT.count += sign(_R)
				_R --
				max(_R,0)
			}
			if(oC_UP.count + oC_DOWN.count + oC_LEFT.count + oC_UP.count<global.roomHandSize && _L >0){
				oC_LEFT.count += sign(_L)
				_L--
				max(_L,0)
			}
			if(oC_UP.count + oC_DOWN.count + oC_LEFT.count + oC_UP.count<global.roomHandSize && _D > 0){
				oC_DOWN.count += sign(_D)
				_D--
				max(_D,0)
			}
	}
}