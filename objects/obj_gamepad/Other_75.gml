/// @description Deteccion de conexion / desconexion

getGamepad();

obj_IM.inputMode = gpConnected() ? INPUT_GAMEPAD : INPUT_KEYBOARD;
