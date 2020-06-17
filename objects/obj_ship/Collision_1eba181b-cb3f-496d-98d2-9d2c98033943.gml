/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 55ABC9E2
instance_destroy();

/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 272F6946
/// @DnDApplyTo : 5cc36f99-94c2-4169-87c7-5c4ccd84e838
with(obj_game) {
	/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 4C274E3E
	/// @DnDParent : 272F6946
	/// @DnDArgument : "lives" "-1"
	/// @DnDArgument : "lives_relative" "1"
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	__dnd_lives += real(-1);

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 7084ECB9
	/// @DnDParent : 272F6946
	/// @DnDArgument : "steps" "room_speed"
	/// @DnDArgument : "alarm" "1"
	alarm_set(1, room_speed);
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 6AC6F85F
/// @DnDArgument : "soundid" "snd_die"
/// @DnDSaveInfo : "soundid" "7c13a80d-827a-46fa-add4-293b7a8112c2"
audio_play_sound(snd_die, 0, 0);

/// @DnDAction : YoYo Games.Loops.Repeat
/// @DnDVersion : 1
/// @DnDHash : 08BD9C34
/// @DnDArgument : "times" "10"
repeat(10)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 78975E09
	/// @DnDParent : 08BD9C34
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "obj_debris"
	/// @DnDSaveInfo : "objectid" "3fb10965-f501-4fd2-9d69-b425c34c6905"
	instance_create_layer(x + 0, y + 0, "Instances", obj_debris);
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 7C729898
/// @DnDArgument : "objectid" "obj_ship"
/// @DnDSaveInfo : "objectid" "f002e2ec-7341-4220-a15e-6646504fd662"
instance_create_layer(0, 0, "Instances", obj_ship);