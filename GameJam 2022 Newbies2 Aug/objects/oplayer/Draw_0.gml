/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 38DE88EE
/// @DnDArgument : "var" "abs(hsp)"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(abs(hsp) < 1)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 03ADEFA7
	/// @DnDParent : 38DE88EE
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "player_Idle"
	/// @DnDSaveInfo : "sprite" "player_Idle"
	draw_sprite_ext(player_Idle, 0, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 1);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 351B5952
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 44E698F1
	/// @DnDParent : 351B5952
	/// @DnDArgument : "var" "facing"
	/// @DnDArgument : "value" "1"
	if(facing == 1)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 1B247C78
		/// @DnDParent : 44E698F1
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "player_Run"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "player_Run"
		draw_sprite_ext(player_Run, image_index, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 1);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 467AA409
	/// @DnDParent : 351B5952
	else
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 7F23BF74
		/// @DnDParent : 467AA409
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "xscale" "-1"
		/// @DnDArgument : "sprite" "player_Run"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "player_Run"
		draw_sprite_ext(player_Run, image_index, x + 0, y + 0, -1, 1, 0, $FFFFFF & $ffffff, 1);
	}
}