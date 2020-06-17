/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 42B19475
instance_destroy();

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 0A0CDD8E
/// @DnDArgument : "soundid" "snd_die"
/// @DnDSaveInfo : "soundid" "7c13a80d-827a-46fa-add4-293b7a8112c2"
audio_play_sound(snd_die, 0, 0);

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 27F3C900
/// @DnDApplyTo : 5cc36f99-94c2-4169-87c7-5c4ccd84e838
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Score
	/// @DnDVersion : 1
	/// @DnDHash : 354E8071
	/// @DnDParent : 27F3C900
	/// @DnDArgument : "score" "10"
	/// @DnDArgument : "score_relative" "1"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	__dnd_score += real(10);
}

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 2AA3F1C7
/// @DnDApplyTo : other
with(other) {
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 327D526C
	/// @DnDParent : 2AA3F1C7
	instance_destroy();

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3FEAE937
	/// @DnDParent : 2AA3F1C7
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_asteroid_large"
	if(sprite_index == spr_asteroid_large)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 00566A8A
		/// @DnDParent : 3FEAE937
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 5E57DD61
			/// @DnDParent : 00566A8A
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "339bd393-ca28-46a3-bf2b-be0ed25c22d6"
			var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4119E9ED
			/// @DnDParent : 00566A8A
			/// @DnDArgument : "expr" "spr_asteroid_medium"
			/// @DnDArgument : "var" "newAsteroid.sprite_index"
			newAsteroid.sprite_index = spr_asteroid_medium;
		}
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A907360
	/// @DnDParent : 2AA3F1C7
	/// @DnDArgument : "var" "sprite_index"
	/// @DnDArgument : "value" "spr_asteroid_medium"
	if(sprite_index == spr_asteroid_medium)
	{
		/// @DnDAction : YoYo Games.Loops.Repeat
		/// @DnDVersion : 1
		/// @DnDHash : 48093E54
		/// @DnDParent : 2A907360
		/// @DnDArgument : "times" "2"
		repeat(2)
		{
			/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 08A23D90
			/// @DnDParent : 48093E54
			/// @DnDArgument : "xpos_relative" "1"
			/// @DnDArgument : "ypos_relative" "1"
			/// @DnDArgument : "var" "newAsteroid"
			/// @DnDArgument : "var_temp" "1"
			/// @DnDArgument : "objectid" "obj_asteroid"
			/// @DnDSaveInfo : "objectid" "339bd393-ca28-46a3-bf2b-be0ed25c22d6"
			var newAsteroid = instance_create_layer(x + 0, y + 0, "Instances", obj_asteroid);
		
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 30342C0B
			/// @DnDParent : 48093E54
			/// @DnDArgument : "expr" "spr_asteroid_small"
			/// @DnDArgument : "var" "newAsteroid.sprite_index"
			newAsteroid.sprite_index = spr_asteroid_small;
		}
	}

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 4705DCD1
	/// @DnDParent : 2AA3F1C7
	/// @DnDArgument : "times" "10"
	repeat(10)
	{
		/// @DnDAction : YoYo Games.Instances.Create_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 639509C3
		/// @DnDParent : 4705DCD1
		/// @DnDArgument : "xpos_relative" "1"
		/// @DnDArgument : "ypos_relative" "1"
		/// @DnDArgument : "objectid" "obj_debris"
		/// @DnDSaveInfo : "objectid" "3fb10965-f501-4fd2-9d69-b425c34c6905"
		instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
	}
}