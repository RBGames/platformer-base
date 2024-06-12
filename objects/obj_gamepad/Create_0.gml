/// @description Insert description here
// You can write your code in this editor

currentGamepad = -1;

function getGamepad() {

  var slots = gamepad_get_device_count();
  for (var i = 0; i < slots; i++) {
    if (gamepad_is_connected(i)) {
      currentGamepad = i;
	  gamepad_set_axis_deadzone(currentGamepad, 0.5);
      return;
    }
  }
  currentGamepad = -1;
}

function gpConnected() {
  return currentGamepad != -1;
}

function rumble(intensity = 1) {
	if(!gpConnected() || obj_IM.inputMode == INPUT_KEYBOARD) return;
    gamepad_set_vibration(currentGamepad, intensity, intensity);
    alarm[0] = obj_APP.A_SECOND / 2;
}

function stopRumbling() {
	if(!gpConnected()) return;
    gamepad_set_vibration(currentGamepad, 0, 0);
}

getGamepad();


// Direcciones
gpAxisLH = gpConnected() ? gamepad_axis_value(currentGamepad, gp_axislh) : 0;
gpAxisLV = gpConnected() ? gamepad_axis_value(currentGamepad, gp_axislv) : 0;

// Acciones / Cancelar / volver
gpFace2 = gpConnected() ? gamepad_button_check_pressed(currentGamepad, gp_face2) : false;

// Salto / Jetpack / Nadar (3 estados) / Aceptar 
gpFace1 = gpConnected() ? gamepad_button_check(currentGamepad, gp_face1) : false;
gpFace1Pressed = gpConnected() ? gamepad_button_check_pressed(currentGamepad, gp_face1) : false;
gpFace1Released = gpConnected() ? gamepad_button_check_released(currentGamepad, gp_face1) : false;

// Pausa
gpStart = gpConnected() ? gamepad_button_check_pressed(currentGamepad, gp_start) : false;


