// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.pauseX = 350
global.pauseY = 150

function createPauseMenu(){
	instance_create_depth(global.pauseX, global.pauseY, -10010, obj_buttonRestart)
	instance_create_depth(global.pauseX, global.pauseY + 100, -10010, obj_buttonMainMenu)
	instance_create_depth(global.pauseX, global.pauseY + 200, -10010, obj_buttonExit)
}