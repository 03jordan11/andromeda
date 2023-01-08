/// @description Insert description here
// You can write your code in this editor

//begin scripted action with drones
if (alarm[1] == -1 && gameStart && !scriptDone) {
	global.score = 0
	alarm[1] = 60*30
}

//spawn group of drones every 3 seconds
if (alarm[0] == -1 && gameStart && droneTrigger){
	alarm[0] = 360
	if (alarm[2] == -1){
		alarm[2] = 480
	} 
}

//begin spawning asteroids after level starts
if (alarm[2] == -1 && !droneTrigger && gameStart && spawnAsteroids){
	alarm[2] = 160
}

if global.score >= 20{
	global.score = 0
	audio_sound_gain(bkgSoundId, 0, 1200)
	transitionStart(rm_level_3, sq_FadeOut, sq_FadeIn)
}