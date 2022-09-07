up_key = keyboard_check_pressed(vk_up);
if(keyboard_check_pressed(vk_up)){audio_play_sound(sfx_Click,10,false)}
down_key = keyboard_check_pressed(vk_down)
if(keyboard_check_pressed(vk_down)){audio_play_sound(sfx_Click,10,false)}
accept = keyboard_check_pressed(vk_enter)

pos += down_key - up_key
if pos >= op_length {pos = 0;}
if pos < 0 {pos = op_length-1;}

if(accept){
	audio_play_sound(sfx_Click2,10,false)
	switch(pos){
		case 0:
			global.currentLevel++
			room_goto_next()
			break
		case 1:
			instance_create_layer(x, y, layer, OptionsMenu);
			break	
		case 2:
			game_end()
		break
	} 
}