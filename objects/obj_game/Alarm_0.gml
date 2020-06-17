/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 3115A292
/// @DnDArgument : "var" "room"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "rm_game"
if(!(room == rm_game))
{
	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 2A4AC96D
	/// @DnDParent : 3115A292
	exit;
}

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 486FF373
/// @DnDInput : 2
/// @DnDArgument : "var" "choice"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "option_1" "1"
var choice = choose(0, 1);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2CE54BF4
/// @DnDArgument : "var" "choice"
if(choice == 0)
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 229B4172
	/// @DnDInput : 2
	/// @DnDParent : 2CE54BF4
	/// @DnDArgument : "var" "xx"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "room_width"
	var xx = choose(room_width, 0);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 323E1552
	/// @DnDParent : 2CE54BF4
	/// @DnDArgument : "var" "yy"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "max" "room_height"
	var yy = (random_range(0, room_height));
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 541AF2FE
else
{
	/// @DnDAction : YoYo Games.Random.Choose
	/// @DnDVersion : 1
	/// @DnDHash : 394E877E
	/// @DnDInput : 2
	/// @DnDParent : 541AF2FE
	/// @DnDArgument : "var" "yy"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "option" "room_height"
	var yy = choose(room_height, 0);

	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 624023B3
	/// @DnDParent : 541AF2FE
	/// @DnDArgument : "var" "xx"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "max" "room_width"
	var xx = (random_range(0, room_width));
}

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 09FB7110
/// @DnDArgument : "xpos" "xx"
/// @DnDArgument : "ypos" "yy"
/// @DnDArgument : "objectid" "obj_asteroid"
/// @DnDSaveInfo : "objectid" "339bd393-ca28-46a3-bf2b-be0ed25c22d6"
instance_create_layer(xx, yy, "Instances", obj_asteroid);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5D07AB7E
/// @DnDArgument : "steps" "room_speed*4"
alarm_set(0, room_speed*4);