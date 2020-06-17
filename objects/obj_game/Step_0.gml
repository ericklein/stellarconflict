/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 49D44DC4
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Instance Variables.If_Score
	/// @DnDVersion : 1
	/// @DnDHash : 10752782
	/// @DnDParent : 49D44DC4
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1000"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	if(__dnd_score >= 1000)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 1BD4CC8C
		/// @DnDParent : 10752782
		/// @DnDArgument : "soundid" "snd_win"
		/// @DnDSaveInfo : "soundid" "0c9f62eb-b545-4e8f-bfa3-66f1db58dfce"
		audio_play_sound(snd_win, 0, 0);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 2281CD3D
		/// @DnDParent : 10752782
		/// @DnDArgument : "room" "rm_win"
		/// @DnDSaveInfo : "room" "282a14ee-0504-4f01-8e67-b1a5b3d1661e"
		room_goto(rm_win);
	}

	/// @DnDAction : YoYo Games.Instance Variables.If_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 1E76D85D
	/// @DnDParent : 49D44DC4
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	if(__dnd_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Audio.Play_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 128822E8
		/// @DnDParent : 1E76D85D
		/// @DnDArgument : "soundid" "snd_lose"
		/// @DnDSaveInfo : "soundid" "7e47a269-e8fc-452e-9d29-31d03682eb28"
		audio_play_sound(snd_lose, 0, 0);
	
		/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 451D05F0
		/// @DnDParent : 1E76D85D
		/// @DnDArgument : "room" "rm_gameover"
		/// @DnDSaveInfo : "room" "17442a6c-1735-4556-b8c3-dde5495656db"
		room_goto(rm_gameover);
	}
}