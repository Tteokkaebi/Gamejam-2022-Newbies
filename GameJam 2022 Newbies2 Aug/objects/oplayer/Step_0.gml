//var l0C575E1B_0 = instance_place(x + 0, y + 1, oBarrier);
////inst_id = l0C575E1B_0;
//if ((l0C575E1B_0 > 0))
//{
//	vsp = 0;
//}

//else
//{
//	vsp = vsp-grav;
//}

//var l7ADB4CA5_0;
//l7ADB4CA5_0 = keyboard_check(vk_space);
//if (l7ADB4CA5_0)
//{
//	var l0094741F_0 = instance_place(x + 0, y + 1, oBarrier);
//	inst_id = l0094741F_0;
//	if ((l0094741F_0 > 0))
//	{
//		vsp = vsp+jump_vel;
//	}
//}

//var l172A4C6C_0;
//l172A4C6C_0 = keyboard_check(vk_right);
//if (l172A4C6C_0)
//{
//	hsp = hsp+accel;

//	if(hsp > walk_spd)
//	{
//		hsp = walk_spd;
//	}
//}

//var l54AD0E78_0;
//l54AD0E78_0 = keyboard_check(vk_left);
//if (l54AD0E78_0)
//{
//	hsp = hsp-accel;

//	if(hsp < -walk_spd)
//	{
//		hsp = -walk_spd;
//	}
//}

if(keyboard_check(vk_right)){
hsp = hsp+accel
if(hsp > walk_spd){
hsp = walk_spd
}
}
if(keyboard_check(vk_left)){
hsp = hsp-accel
if(hsp < -walk_spd){
hsp = -walk_spd
}
}

if(vsp <7){
vsp += grav
}

if(keyboard_check(vk_space)){
	if(place_meeting(x,y+1,oBarrier)){
vsp = -15
}
}
while place_meeting(x+hsp,y,oBarrier){
hsp -= sign(hsp)
}
while place_meeting(x,y+vsp,oBarrier){
vsp -= sign(vsp)
}
while place_meeting(x+vsp,y+vsp,oBarrier){
hsp -= sign(hsp)
vsp -= sign(vsp)
}
hsp = hsp*drag

x += hsp
y += vsp

if(!(hsp == 0))
{
	if(hsp > 0)
	{
		facing = 1;
	}

	else
	{
		if(hsp < 0)
		{
			facing = -1;
		}
	}
}