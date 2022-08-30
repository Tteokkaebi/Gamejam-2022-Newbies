//Get user input
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

//Logic for preventing left & right being held
var move = key_right - key_left;
//-1 for left, 0 for idle, 1 for right. 

//Var referencing to create
HSPD = move * MSPD;
//Gravity
VSPD = VSPD + GRV;

//Jump
if (place_meeting(x,y+1,oBarrier)){ 
	if(key_up){
		vsp = JSPD;
	}
}

//Collision for wall horizontally
if (place_meeting(x+HSPD,y,oBarrier)){
	
	
	while (!place_meeting(x+sign(HSPD),y,oBarrier)){
			x = x + sign(HSPD);
	}
	
	HSPD = 0;
}
//Horizontal Movement
x = x + HSPD;

//Collision for Verticality 
if (place_meeting(x,y+sign(VSPD),oBarrier)){
	while (!place_meeting(x,y+sign(VSPD),oBarrier)){
		y = y + sign(VSPD);
	}
		VSPD = 0
}	
y = y + VSPD;