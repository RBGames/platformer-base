/// @description Mantener eventos de teclas al dia

// Direcciones
var kbUp = keyboard_check(vk_up);
var kbDown = keyboard_check(vk_down);
var kbLeft = keyboard_check(vk_left);
var kbRight = keyboard_check(vk_right);

var kbW = keyboard_check(ord("W"));
var kbS = keyboard_check(ord("S"));
var kbA = keyboard_check(ord("A"));
var kbD = keyboard_check(ord("D"));

// Acciones
var kbC = keyboard_check_pressed(ord("C"));
var kbE = keyboard_check_pressed(ord("E"));

// Salto / Jetpack / Nadar (3 estados)
var kbX = keyboard_check(ord("X"));
var kbSpace = keyboard_check(vk_space);

var kbXPressed = keyboard_check_pressed(ord("X"));
var kbSpacePressed = keyboard_check_pressed(vk_space);

var kbXReleased = keyboard_check_released(ord("X"));
var kbSpaceReleased = keyboard_check_released(vk_space);

// Pausa
var kbEsc = keyboard_check_pressed(vk_escape);
var kbP = keyboard_check_pressed(ord("P"));

// Menus / UI / HUD
var kbEnter = keyboard_check_pressed(vk_enter);
var kbShift = keyboard_check_pressed(vk_shift);

// Mappings

keyLeft = kbLeft || kbA || obj_gamepad.gpAxisLH < 0;
keyRight = kbRight || kbD || obj_gamepad.gpAxisLH > 0;
keyDown = kbDown || kbS || obj_gamepad.gpAxisLV > 0;;
keyJump = kbX || kbSpace || obj_gamepad.gpFace1;
keyJumpPressed = kbXPressed || kbSpacePressed || obj_gamepad.gpFace1Pressed;
keyJumpReleased = kbXReleased || kbSpaceReleased || obj_gamepad.gpFace1Released;
keyAction = kbC || kbE || obj_gamepad.gpFace2;
keyPause = kbEsc || kbP || obj_gamepad.gpStart;
keyAccept = kbEnter || obj_gamepad.gpFace1Pressed;
keyCancel = kbShift || obj_gamepad.gpFace2;


// Establecer mando como metodo de entrada al pulsar cualquier boton

if(keyboard_check(vk_anykey)) {
  obj_IM.inputMode = INPUT_KEYBOARD;
}

