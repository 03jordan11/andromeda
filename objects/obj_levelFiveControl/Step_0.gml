/// @description Insert description here
// You can write your code in this editor

//spawn group of drones every 3 seconds
if (alarm[0] == -1 && gameStart){
	alarm[0] = 360
}

//spawn fighters
if (alarm[1] == -1 && gameStart){
	alarm[1] = 180
}

//spawn last enemy type
if(alarm[2] == -1 && gameStart && !instance_exists(obj_boss)){
	randomize()
	alarm[2] = 60 * random_range(1, 3)
}


if global.score >= 50{
	global.score = 0
	audio_sound_gain(bkgSoundId, 0, 1200)
	obj_player.currentControl = obj_levelFiveControl
	obj_player.levelOver = true
}