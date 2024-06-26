/// @description bootstraping

gamepad = instance_create_depth(0, 0, 0, obj_gamepad);
inputManager = instance_create_depth(0, 0, 0, obj_IM);

game_set_speed(60, gamespeed_fps);

A_SECOND = game_get_speed(gamespeed_fps);
A_FRAME = A_SECOND / 60;