/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 14D8EC1F
/// @DnDArgument : "where" "1"
/// @DnDArgument : "size" "1"
effect_create_above(0, 0, 0, 1, $FFFFFF & $ffffff);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 1D31BE5B
instance_destroy();

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 04BCA13C
/// @DnDApplyTo : {game}
/// @DnDArgument : "steps" "120"
with(game) {
alarm_set(0, 120);

}