/// @description main game loop
if global.score >= 1{
	audio_sound_gain(bkgSoundId, 0, 1200)
	obj_asteroidSpawner.gameStart = false
	global.score = 0
	//Destroy
	obj_asteroidSpawner.alarm[0] = -1
	obj_asteroidSpawner.gameStart = false
	instance_destroy(obj_asteroidM)
	//Bring ship back to original place
	obj_player.levelOver = true
	//layer_sequence_create("Instances", 0, 0, sq_shipEnd)
	//transitionStart(rm_level_2, sq_FadeOut, sq_FadeIn)
}



 