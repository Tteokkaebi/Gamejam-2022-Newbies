//draw_set_font(global.font_main)
draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_set_colour(c_white)

for(var i = 0; i < op_length; i++){
	var _c = c_white
	if pos == i {_c = c_lime}
	draw_sprite_ext(option[i],image_index, x+op_border,y+op_border + op_space * i,1,1,0,_c, 1)
}