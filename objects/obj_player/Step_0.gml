/// @description movement

if(obj_IM.keyRight) physics_apply_force(x, y, movementForce, 0);
if(obj_IM.keyLeft) physics_apply_force(x, y, -movementForce, 0);

if(obj_IM.keyJump) physics_apply_force(x, y, 0, -jumpForce);