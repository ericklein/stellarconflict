/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 00E2F6F4
/// @DnDArgument : "var" "room"
/// @DnDArgument : "value" "rm_game"
if(room == rm_game)
{
	/// @DnDAction : YoYo Games.Audio.If_Audio_Playing
	/// @DnDVersion : 1
	/// @DnDHash : 7837B588
	/// @DnDParent : 00E2F6F4
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDSaveInfo : "soundid" "4f019f6b-68bd-4255-8cf5-d31d8c11a292"
	var l7837B588_0 = msc_song;
	if (audio_is_playing(l7837B588_0))
	{
		/// @DnDAction : YoYo Games.Audio.Stop_Audio
		/// @DnDVersion : 1
		/// @DnDHash : 3A3725A7
		/// @DnDParent : 7837B588
		/// @DnDArgument : "soundid" "msc_song"
		/// @DnDSaveInfo : "soundid" "4f019f6b-68bd-4255-8cf5-d31d8c11a292"
		audio_stop_sound(msc_song);
	}

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 66596D14
	/// @DnDParent : 00E2F6F4
	/// @DnDArgument : "soundid" "msc_song"
	/// @DnDArgument : "loop" "1"
	/// @DnDSaveInfo : "soundid" "4f019f6b-68bd-4255-8cf5-d31d8c11a292"
	audio_play_sound(msc_song, 0, 1);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 1B57EE3B
	/// @DnDParent : 00E2F6F4
	/// @DnDArgument : "steps" "60"
	alarm_set(0, 60);

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 5A78613E
	/// @DnDParent : 00E2F6F4
	/// @DnDArgument : "times" "6"
	repeat(6)
	{
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 27BE315D
		/// @DnDInput : 2
		/// @DnDParent : 5A78613E
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 17607336
		/// @DnDParent : 5A78613E
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 08A08821
			/// @DnDParent : 17607336
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "max" "room_width*0.3"
			var xx = (random_range(0, room_width*0.3));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 18F6D12B
		/// @DnDParent : 5A78613E
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 0A86AB70
			/// @DnDParent : 18F6D12B
			/// @DnDArgument : "var" "xx"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "min" "room_width*0.7"
			/// @DnDArgument : "max" "room_width"
			var xx = (random_range(room_width*0.7, room_width));
		}
	
		/// @DnDAction : YoYo Games.Random.Choose
		/// @DnDVersion : 1
		/// @DnDHash : 0FE0C786
		/// @DnDInput : 2
		/// @DnDParent : 5A78613E
		/// @DnDArgument : "var" "choice"
		/// @DnDArgument : "var_temp" "1"
		/// @DnDArgument : "option_1" "1"
		var choice = choose(0, 1);
	
		/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 50830809
		/// @DnDParent : 5A78613E
		/// @DnDArgument : "var" "choice"
		if(choice == 0)
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 185780FE
			/// @DnDParent : 50830809
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "max" "room_height*0.3"
			var yy = (random_range(0, room_height*0.3));
		}
	
		/// @DnDAction : YoYo Games.Common.Else
		/// @DnDVersion : 1
		/// @DnDHash : 237940A4
		/// @DnDParent : 5A78613E
		else
		{
			/// @DnDAction : YoYo Games.Random.Get_Random_Number
			/// @DnDVersion : 1
			/// @DnDHash : 7D766705
			/// @DnDParent : 237940A4
			/// @DnDArgument : "var" "yy"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "min" "room_height*0.7"
			/// @DnDArgument : "max" "room_height"
			var yy = (random_range(room_height*0.7, room_height));
		}
	
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 468796F9
		/// @DnDParent : 5A78613E
		/// @DnDArgument : "xpos" "xx"
		/// @DnDArgument : "ypos" "yy"
		/// @DnDArgument : "objectid" "obj_asteroid"
		/// @DnDSaveInfo : "objectid" "339bd393-ca28-46a3-bf2b-be0ed25c22d6"
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}
}