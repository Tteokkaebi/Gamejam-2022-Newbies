
if (image_index >= 7)
{

	instance_create_layer(x, y, layer, oPlayer);
	instance_destroy();
	
		for(var i = 0; i < 4; i++){
		if i == 0{
			peepee = global.rightCards
			while((oC_DOWN.count + oC_LEFT.count + oC_RIGHT.count + oC_UP.count + 1 <= oPlayer.handSize) && peepee > 0){
				oC_RIGHT.count ++
				peepee --
			}
		}
		if i == 1{
			peepee = global.upCards
			while((oC_DOWN.count + oC_LEFT.count + oC_RIGHT.count + oC_UP.count + 1 <= oPlayer.handSize) && peepee > 0){
				oC_UP.count ++
				peepee --
			}
		}
		if i == 2{
			peepee = global.leftCards
			while((oC_DOWN.count + oC_LEFT.count + oC_RIGHT.count + oC_UP.count + 1 <= oPlayer.handSize) && peepee > 0){
				oC_LEFT.count ++
				peepee --
			}
		}
		if i == 3{
			peepee = global.downCards
			while((oC_DOWN.count + oC_LEFT.count + oC_RIGHT.count + oC_UP.count + 1 <= oPlayer.handSize) && peepee > 0){
				oC_DOWN.count ++
				peepee --
			}
		}
	}
}


