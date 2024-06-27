///@description needs a gravityForce variable in object's create event
function gravityHandler() {
var initialGravity = 1;
var verticalAcc = 0.1;
var terminalVel = 7.5;

var groundCol = instance_place(x, y + gravityForce, obj_block);

if(!groundCol) {
	if(gravityForce < terminalVel) gravityForce += verticalAcc;
	y += gravityForce;
}

if(groundCol) {
  gravityForce = initialGravity;
}


}