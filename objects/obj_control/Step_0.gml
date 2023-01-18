/// @description main game loop
if global.score >= 20{
	audio_sound_gain(bkgSoundId, 0, 3000)
	global.score = 0
	stopAsteroidsLvl1()
	destroyAllEnemies()
	//levelOverScript(obj_control)
	obj_player.currentControl = obj_control
	obj_player.levelOver = true
}



 