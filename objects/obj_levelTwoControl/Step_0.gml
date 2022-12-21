/// @description Insert description here
// You can write your code in this editor

//spawn group of drones every 3 seconds
if (alarm[0] == -1 && gameStart && droneTrigger){
	alarm[0] = 360
	if (alarm[2] == -1){
		alarm[2] = 480
	} 
}

//begin scripted action with drones
if (alarm[1] == -1 && gameStart && !scriptDone) {
	alarm[1] = 60*75
}

//begin spawning asteroids after level starts
if (alarm[2] == -1 && !droneTrigger && gameStart && spawnAsteroids){
	alarm[2] = 360
}

if global.score >= 1{
	global.score = 0
	audio_sound_gain(bkgSoundId, 0, 1200)
	room_goto_next()
}