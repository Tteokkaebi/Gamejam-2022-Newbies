option[0,0] = "SFX Volume:" + string(global.sfxVol)
option[0,1] = "Music Volume:" + string(global.musicVol)

up_key = keyboard_check_pressed(vk_up)||keyboard_check_pressed(ord("W"));
if(keyboard_check_pressed(vk_up)||keyboard_check_pressed(ord("W"))){audio_play_sound(sfx_Click,10,false)}
down_key = keyboard_check_pressed(vk_down)||keyboard_check_pressed(ord("S"))
if(keyboard_check_pressed(vk_down)||keyboard_check_pressed(ord("S"))){audio_play_sound(sfx_Click,10,false)}
accept = keyboard_check_pressed(vk_enter)
if(keyboard_check_released(vk_left)||keyboard_check_pressed(ord("A"))){audio_play_sound(sfx_AudioTest,10,false)}
if(keyboard_check_released(vk_right)||keyboard_check_pressed(ord("D"))){audio_play_sound(sfx_AudioTest,10,false)}
diff = keyboard_check(vk_right)||keyboard_check(ord("D")) - keyboard_check(vk_left)||keyboard_check(ord("A"))

op_length = array_length(option[menu_level])

pos += down_key - up_key
if pos >= op_length {pos = 0;}
if pos < 0 {pos = op_length-1;}

if(accept){

var _sml = menu_level

switch(menu_level){
	case 0:
		switch(pos){
			case 0:
				break
			case 1:
				break
			case 2:
				audio_play_sound(sfx_Click2,10,false)
				instance_activate_all()
				instance_destroy()
				break
			
		}
	}
	if _sml != menu_level {pos = 0}
	op_length = array_length(option[menu_level])
}

if(diff != 0){

var _sml = menu_level

switch(menu_level){
	case 0:
		switch(pos){
			case 0:
					global.sfxVol += diff
					global.sfxVol = clamp(global.sfxVol,0,100)
				break
			case 1:
					global.musicVol += diff
					global.musicVol = clamp(global.musicVol,0,100)
				break
			case 2:
				break
		}
	}
	if _sml != menu_level {pos = 0}
	op_length = array_length(option[menu_level])
}