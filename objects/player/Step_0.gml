/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 5D7683F9
/// @DnDArgument : "key" "vk_left"
var l5D7683F9_0;
l5D7683F9_0 = keyboard_check(vk_left);
if (l5D7683F9_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7B8D9150
	/// @DnDParent : 5D7683F9
	/// @DnDArgument : "expr" "4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += 4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 4000E768
/// @DnDArgument : "key" "vk_up"
var l4000E768_0;
l4000E768_0 = keyboard_check(vk_up);
if (l4000E768_0)
{
	/// @DnDAction : YoYo Games.Movement.Add_Motion
	/// @DnDVersion : 1
	/// @DnDHash : 42DA7238
	/// @DnDParent : 4000E768
	/// @DnDArgument : "dir" "image_angle"
	/// @DnDArgument : "speed" "0.1"
	motion_add(image_angle, 0.1);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Down
/// @DnDVersion : 1
/// @DnDHash : 36B19B80
/// @DnDArgument : "key" "vk_right"
var l36B19B80_0;
l36B19B80_0 = keyboard_check(vk_right);
if (l36B19B80_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10DE1182
	/// @DnDParent : 36B19B80
	/// @DnDArgument : "expr" "-4"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "image_angle"
	image_angle += -4;
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Mouse_Pressed
/// @DnDVersion : 1.1
/// @DnDHash : 13AFCE0D
var l13AFCE0D_0;
l13AFCE0D_0 = mouse_check_button_pressed(mb_left);
if (l13AFCE0D_0)
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 48141F05
	/// @DnDParent : 13AFCE0D
	/// @DnDArgument : "xpos_relative" "1"
	/// @DnDArgument : "ypos_relative" "1"
	/// @DnDArgument : "objectid" "bullet"
	/// @DnDSaveInfo : "objectid" "bullet"
	instance_create_layer(x + 0, y + 0, "Instances", bullet);
}

/// @DnDAction : YoYo Games.Movement.Wrap_Room
/// @DnDVersion : 1
/// @DnDHash : 4564EDE1
move_wrap(1, 1, 0);