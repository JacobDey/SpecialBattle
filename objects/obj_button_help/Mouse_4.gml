/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 3C917D44
event_inherited();

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 08F9BD87
/// @DnDArgument : "obj" "obj_controls"
/// @DnDSaveInfo : "obj" "obj_controls"
var l08F9BD87_0 = false;
l08F9BD87_0 = instance_exists(obj_controls);
if(l08F9BD87_0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7B765D97
	/// @DnDApplyTo : {obj_controls}
	/// @DnDParent : 08F9BD87
	with(obj_controls) instance_destroy();
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 0942CE10
else
{
	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 07BC24B1
	/// @DnDParent : 0942CE10
	/// @DnDArgument : "xpos" "room_width/2"
	/// @DnDArgument : "ypos" "room_height-100"
	/// @DnDArgument : "objectid" "obj_controls"
	/// @DnDSaveInfo : "objectid" "obj_controls"
	instance_create_layer(room_width/2, room_height-100, "Instances", obj_controls);
}