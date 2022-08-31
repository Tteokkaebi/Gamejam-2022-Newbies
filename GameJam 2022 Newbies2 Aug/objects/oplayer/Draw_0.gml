/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4D5FFFDF
/// @DnDArgument : "var" "facing"
if(facing == 0)
{
	/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 6F858024
	/// @DnDParent : 4D5FFFDF
	/// @DnDArgument : "x_relative" "1"
	/// @DnDArgument : "y_relative" "1"
	/// @DnDArgument : "sprite" "player_Idle"
	/// @DnDArgument : "frame" "image_index"
	/// @DnDSaveInfo : "sprite" "player_Idle"
	draw_sprite_ext(player_Idle, image_index, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 1);
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 03ED80E8
else
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1142B681
	/// @DnDParent : 03ED80E8
	/// @DnDArgument : "var" "facing"
	/// @DnDArgument : "op" "2"
	if(facing > 0)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 0329567D
		/// @DnDParent : 1142B681
		/// @DnDArgument : "x_relative" "1"
		/// @DnDArgument : "y_relative" "1"
		/// @DnDArgument : "sprite" "player_Run"
		/// @DnDArgument : "frame" "image_index"
		/// @DnDSaveInfo : "sprite" "player_Run"
		draw_sprite_ext(player_Run, image_index, x + 0, y + 0, 1, 1, 0, $FFFFFF & $ffffff, 1);
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 3FFD9DE3
	/// @DnDParent : 03ED80E8
	else
	{
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 778941B4
		/// @DnDParent : 3FFD9DE3
		/// @DnDArgument : "var" "facing"
		/// @DnDArgument : "op" "1"
		if(facing < 0)
		{
			/// @DnDAction : YoYo Games.Drawing.Draw_Sprite_Transformed
			/// @DnDVersion : 1
			/// @DnDHash : 41DE5174
			/// @DnDParent : 778941B4
			/// @DnDArgument : "x_relative" "1"
			/// @DnDArgument : "y_relative" "1"
			/// @DnDArgument : "xscale" "-1"
			/// @DnDArgument : "sprite" "player_Run"
			/// @DnDArgument : "frame" "image_index"
			/// @DnDSaveInfo : "sprite" "player_Run"
			draw_sprite_ext(player_Run, image_index, x + 0, y + 0, -1, 1, 0, $FFFFFF & $ffffff, 1);
		}
	}
}