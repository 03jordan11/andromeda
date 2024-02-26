// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function moveUpInput(){
	keyboard = keyboard_check(ord("W"))
	dPad = gamepad_button_check(0, gp_padu)
	thumbstick = gamepad_axis_value(0, gp_axislv) < -.5
	return keyboard || dPad || thumbstick
}
function moveDownInput(){
	keyboard = keyboard_check(ord("S"))
	dPad = gamepad_button_check(0, gp_padd)
	thumbstick = gamepad_axis_value(0, gp_axislv) > .5
	return keyboard || dPad || thumbstick
}
function moveLeftInput(){
	keyboard = keyboard_check(ord("A"))
	dPad = gamepad_button_check(0, gp_padl)
	thumbstick = gamepad_axis_value(0, gp_axislh) < -.5
	return keyboard || dPad || thumbstick
}
function moveRightInput(){
	keyboard = keyboard_check(ord("D"))
	dPad = gamepad_button_check(0, gp_padr)
	thumbstick = gamepad_axis_value(0, gp_axislh) > .5
	return keyboard || dPad || thumbstick
}

function shootAndContinueInput(){
	keyboard = keyboard_check(vk_space)
	button = gamepad_button_check(0, gp_face1)
	return keyboard || button 
}

function continueInput(){
	keyboard = keyboard_check_released(vk_space)
	button = gamepad_button_check_released(0, gp_face1)
	return keyboard || button 
}