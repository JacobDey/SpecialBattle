
left_cursor = keyboard_check(vk_left);
if (left_cursor)
{
	var p1selection = "left";
//var p2selection = "none";
}

var up_cursor;
up_cursor = keyboard_check(vk_up);
if (up_cursor)
{
	motion_add(image_angle, 0.1);
}

var right_cursor;
right_cursor = keyboard_check(vk_right);
if (right_cursor)
{
	image_angle += -4;
}

var left_cursor;
left_cursor = mouse_check_button_pressed(mb_left);
if (left_cursor)
{
	instance_create_layer(x + 0, y + 0, "Instances", bullet);
}

move_wrap(1, 1, 0);