/// @description movement

var groundCol = place_meeting(x, y + 1, obj_block);

if(obj_IM.keyRight) physics_apply_impulse(x, y, movementForce, 0);
if(obj_IM.keyLeft) physics_apply_angular_impulse(movementForce);

if(groundCol && obj_IM.keyJumpPressed) physics_apply_impulse(x, y, 0, -jumpForce);