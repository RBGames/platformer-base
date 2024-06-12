/// @description Manterner estado al dia

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


// Establecer mando como metodo de entrada al pulsar cualquier boton

if(gpAxisLH || gpAxisLV || gpFace1 || gpFace2 || gpStart) {
  obj_IM.inputMode = INPUT_GAMEPAD;
}