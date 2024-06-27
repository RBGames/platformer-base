/// @description movement
gravityHandler();
if(obj_IM.keyRight) x += movementForce;
if(obj_IM.keyLeft) x -= movementForce

var groundCol = instance_place(x, y + gravityForce, obj_block);
if(groundCol) {
 verticalSpeed = 0;
}

if(groundCol && obj_IM.keyJumpPressed) verticalSpeed = jumpForce; 
if(!groundCol && verticalSpeed > 0) verticalSpeed -= 0.1;


y -= verticalSpeed;
