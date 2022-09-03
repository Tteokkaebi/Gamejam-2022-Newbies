//PLAYER INPUT
key_left = keyboard_check(vk_left);
//produces 1 or 0 if pressing left or not
key_right = keyboard_check (vk_right);
//vis a vis key_left
key_jump = keyboard_check_pressed(vk_up);
//checks if pressed, not holding

//CALCULATE MOVEMENT
var move = key_right - key_left;
//produces 1 if right, -1 if left
hsp = move * walksp;
//produces 1, 0, -1 multiplied by constant 
vsp = vsp + grv;
//y-position changes according to gravity
if (place_meeting(x, y + 1, oBarrier)) && (key_jump)
{
	vsp = -5;
}
//if player is touching barrier and key_jump is true, increase vsp to 5

//HORIZONTAL COLLISION
if (place_meeting (x + hsp, y, oBarrier))
{
	while (!place_meeting(x + sign(hsp), y, oBarrier))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
//if object is approaching a barrier, before the object reaches the barrier, decrease the distance b/w
//the barrier and object by one pixel. upon reaching barrier, stop horizontal movement
x = x + hsp;
//changes x-position as hsp is added

//VERTICAL COLLISION
if (place_meeting (x, y + vsp, oBarrier))
{
	while (!place_meeting(x, y + sign(vsp), oBarrier))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
//if object is approaching a barrier, before the object reaches the barrier, decrease the distance b/w
//the barrier and object by one pixel. upon reaching barrier, stop vertical movement
y = y + vsp;
//changes y-position as vsp is added

//ANIMATION
if (!place_meeting (x, y + 1, oBarrier))
{
	sprite_index = player_Jump;
}
//if sprite is contacting oBarrier, jump anim plays, image speed multiplies fps by 1
else
{
	image_speed = 1;
	if (hsp == 0)
	{
		sprite_index = player_Idle;
	}
	else
	{
		sprite_index = player_Run;
	}
}
//elif hsp is 0 play idle anim, if not, play run anim

if (hsp != 0) image_xscale = sign(hsp);
//returns x-sizing according to hsp