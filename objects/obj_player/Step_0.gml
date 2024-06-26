/// @description movement

var groundCol = place_meeting(x, y + 1, obj_block);

if(obj_IM.keyRight) x += movementForce;
if(obj_IM.keyLeft) x -= movementForce

//if(groundCol && obj_IM.keyJumpPressed) y -= jumpForce;
