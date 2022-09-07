draw_sprite_ext(Card_LEFT, image_index, 525, 1325, .3, .3, 0, $FFFFFF & $ffffff, 1);
image_speed = .1
draw_text_transformed(450, 1210, string("") + string(count), 2, 2, 0);
draw_text_transformed(300, 1175, string("Hand Size: ") + string(global.roomHandSize), 2, 2, 0);