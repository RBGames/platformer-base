/// @description movement
gravityHandler();
var isPlayerMoving = obj_IM.keyLeft || obj_IM.keyRight;
if(obj_IM.keyRight) horizontalSpeed = horizontalSpeed < maxHorizontalSpeed ? (horizontalSpeed + horizontalAcc) : horizontalSpeed;
if(obj_IM.keyLeft) horizontalSpeed = horizontalSpeed > -maxHorizontalSpeed ? (horizontalSpeed - horizontalAcc) : horizontalSpeed;


 groundCol = instance_place(x, y + verticalSpeed + 1, obj_block);
 ceilCol = instance_place(x, y - verticalSpeed, obj_block);

var wallLCol = instance_place(x - abs(horizontalSpeed), y,  obj_block);
var wallRCol = instance_place(x + abs(horizontalSpeed), y, obj_block);

if((groundCol && verticalSpeed > 0) || (ceilCol && verticalSpeed < 0)) {
 verticalSpeed = 0;
}

if((wallLCol && !obj_IM.keyRight) || (wallRCol && !obj_IM.keyLeft)) {
	horizontalSpeed = 0;
}

if(groundCol && obj_IM.keyJumpPressed) verticalSpeed = -jumpForce; 
if(!groundCol && verticalSpeed != 0) verticalSpeed += 0.1;

var fricc = groundCol ? groundFriction : airFriction;

if(!isPlayerMoving) horizontalSpeed += (fricc * -sign(horizontalSpeed))

x += horizontalSpeed;
y += verticalSpeed;
