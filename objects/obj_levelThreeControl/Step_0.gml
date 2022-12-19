/// @description Insert description here
// You can write your code in this editor

//spawn group of drones every 3 seconds
if (alarm[0] == -1 && gameStart){
	alarm[0] = 360
	//spawn asteroids every now and again as well
	if (alarm[2] == -1){
		alarm[2] = 480
	} 
	
}
if (alarm[1] == -1 && gameStart){
	alarm[1] = 60
}


if global.score >= 10{
	obj_textBox.textToShow = "You Win"
}