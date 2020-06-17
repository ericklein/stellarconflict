/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 432835D4
/// @DnDArgument : "expr" "room"
var l432835D4_0 = room;
switch(l432835D4_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 68779F47
	/// @DnDParent : 432835D4
	/// @DnDArgument : "const" "rm_game"
	case rm_game:
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 01973680
		/// @DnDParent : 68779F47
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "20"
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(20, 20, string("Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 16ECC161
		/// @DnDParent : 68779F47
		/// @DnDArgument : "x" "20"
		/// @DnDArgument : "y" "40"
		/// @DnDArgument : "sprite" "spr_lives"
		/// @DnDSaveInfo : "sprite" "391dfb51-fc3a-46d6-ab34-de16abc426f1"
		var l16ECC161_0 = sprite_get_width(spr_lives);
		var l16ECC161_1 = 0;
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		for(var l16ECC161_2 = __dnd_lives; l16ECC161_2 > 0; --l16ECC161_2) {
			draw_sprite(spr_lives, 0, 20 + l16ECC161_1, 40);
			l16ECC161_1 += l16ECC161_0;
		}
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 1CDAE043
	/// @DnDParent : 432835D4
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 406F3D22
		/// @DnDParent : 1CDAE043
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 39F13873
		/// @DnDParent : 1CDAE043
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""Eric Space Rocks""
		draw_text_transformed(250, 100, string("Eric Space Rocks") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 11A8C6C2
		/// @DnDParent : 1CDAE043
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "200"
		/// @DnDArgument : "caption" ""Score 1000 points to win!""
		draw_text(250, 200, string("Score 1000 points to win!") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 561D9CA4
		/// @DnDParent : 1CDAE043
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "230"
		/// @DnDArgument : "caption" ""Navigate with arrow keys""
		draw_text(250, 230, string("Navigate with arrow keys") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 6BC05CDF
		/// @DnDParent : 1CDAE043
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "260"
		/// @DnDArgument : "caption" ""Press space to fire""
		draw_text(250, 260, string("Press space to fire") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 714F989F
		/// @DnDParent : 1CDAE043
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "350"
		/// @DnDArgument : "caption" ""Press Enter to start!""
		draw_text(250, 350, string("Press Enter to start!") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 370490EA
		/// @DnDParent : 1CDAE043
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 67C8CEDB
	/// @DnDParent : 432835D4
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 342A93FF
		/// @DnDParent : 67C8CEDB
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 07DB9738
		/// @DnDParent : 67C8CEDB
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""You Lose""
		draw_text_transformed(250, 100, string("You Lose") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 52BE0C08
		/// @DnDParent : 67C8CEDB
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""Final Score: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("Final Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 7FC5D709
		/// @DnDParent : 67C8CEDB
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" ""Press Enter to restart""
		draw_text(250, 300, string("Press Enter to restart") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 60DDEC98
		/// @DnDParent : 67C8CEDB
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 44E15BF7
	/// @DnDParent : 432835D4
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 3D5C1269
		/// @DnDParent : 44E15BF7
		/// @DnDArgument : "halign" "fa_center"
		draw_set_halign(fa_center);
		draw_set_valign(fa_top);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
		/// @DnDVersion : 1
		/// @DnDHash : 646A1BCC
		/// @DnDParent : 44E15BF7
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "100"
		/// @DnDArgument : "xscale" "3"
		/// @DnDArgument : "yscale" "3"
		/// @DnDArgument : "caption" ""You Win""
		draw_text_transformed(250, 100, string("You Win") + "", 3, 3, 0);
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
		/// @DnDVersion : 1
		/// @DnDHash : 6246B349
		/// @DnDParent : 44E15BF7
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "250"
		/// @DnDArgument : "caption" ""Final Score: ""
		if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
		draw_text(250, 250, string("Final Score: ") + string(__dnd_score));
	
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 7304D546
		/// @DnDParent : 44E15BF7
		/// @DnDArgument : "x" "250"
		/// @DnDArgument : "y" "300"
		/// @DnDArgument : "caption" ""Press Enter to restart""
		draw_text(250, 300, string("Press Enter to restart") + "");
	
		/// @DnDAction : YoYo Games.Drawing.Set_Alignment
		/// @DnDVersion : 1.1
		/// @DnDHash : 2317D0F2
		/// @DnDParent : 44E15BF7
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
		break;
}