var l5D7683F9_0;
l5D7683F9_0 = keyboard_check(vk_left);
if (l5D7683F9_0)
{
	image_angle += 4;
}

var l4000E768_0;
l4000E768_0 = keyboard_check(vk_up);
if (l4000E768_0)
{
	motion_add(image_angle, 0.1);
}

var l36B19B80_0;
l36B19B80_0 = keyboard_check(vk_right);
if (l36B19B80_0)
{
	image_angle += -4;
}

var l13AFCE0D_0;
l13AFCE0D_0 = mouse_check_button_pressed(mb_left);
if (l13AFCE0D_0)
{
	instance_create_layer(x + 0, y + 0, "Instances", bullet);
}

move_wrap(1, 1, 0);