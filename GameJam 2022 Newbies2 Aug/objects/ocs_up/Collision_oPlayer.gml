/// @description Insert description here
// You can write your code in this editor
if(oC_DOWN.count + oC_LEFT.count + oC_RIGHT.count + oC_UP.count + 1 <= oPlayer.handSize){
	oC_UP.count +=1
	audio_play_sound(sfx_CardPickUp,10,false)
	instance_destroy()
}



