up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down)
accept = keyboard_check_pressed(vk_enter)

pos += down_key - up_key
if pos >= op_length {pos = 0}
if pos < 0 {pos = op_length-1}

if(accept){
	
	switch(pos){
		case 0:
			room_goto_next()
			break
		case 1:
			break	
		case 2:
			game_end()
		break
	} 
}