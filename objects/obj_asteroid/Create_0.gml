/// @DnDAction : YoYo Games.Random.Randomize
/// @DnDVersion : 1
/// @DnDHash : 581C81E5
randomize();

/// @DnDAction : YoYo Games.Random.Choose
/// @DnDVersion : 1
/// @DnDHash : 598BAB0B
/// @DnDInput : 3
/// @DnDArgument : "var" "sprite_index"
/// @DnDArgument : "option" "spr_asteroid_small"
/// @DnDArgument : "option_1" "spr_asteroid_medium"
/// @DnDArgument : "option_2" "spr_asteroid_large"
sprite_index = choose(spr_asteroid_small, spr_asteroid_medium, spr_asteroid_large);

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 12AAB408
/// @DnDArgument : "var" "direction"
/// @DnDArgument : "max" "359"
direction = (random_range(0, 359));

/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 56A412F6
/// @DnDArgument : "var" "image_angle"
/// @DnDArgument : "max" "359"
image_angle = (random_range(0, 359));

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 37B85A6F
/// @DnDArgument : "speed" "1"
speed = 1;