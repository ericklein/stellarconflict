/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 42936CF6
/// @DnDArgument : "expr" "room"
var l42936CF6_0 = room;
switch(l42936CF6_0)
{
	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 125434D3
	/// @DnDParent : 42936CF6
	/// @DnDArgument : "const" "rm_start"
	case rm_start:
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 376091B6
		/// @DnDParent : 125434D3
		/// @DnDArgument : "room" "rm_game"
		/// @DnDSaveInfo : "room" "6023ff5e-2eed-48a2-8f79-53c0b4770cb1"
		room_goto(rm_game);
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 6F1A3EE9
	/// @DnDParent : 42936CF6
	/// @DnDArgument : "const" "rm_gameover"
	case rm_gameover:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 5309E527
		/// @DnDParent : 6F1A3EE9
		game_restart();
		break;

	/// @DnDAction : YoYo Games.Switch.Case
	/// @DnDVersion : 1
	/// @DnDHash : 0535CAD8
	/// @DnDParent : 42936CF6
	/// @DnDArgument : "const" "rm_win"
	case rm_win:
		/// @DnDAction : YoYo Games.Game.Restart_Game
		/// @DnDVersion : 1
		/// @DnDHash : 04E1FBC3
		/// @DnDParent : 0535CAD8
		game_restart();
		break;
}