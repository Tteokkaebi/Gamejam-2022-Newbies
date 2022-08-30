key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_up = keyboard_check(vk_up);
key_down = keyboard_check(vk_down);

var move = key_right - key_left;
//-1 for left, 0 for idle, 1 for right. 

HSPD = move * MSPD;

x = x + HSPD;