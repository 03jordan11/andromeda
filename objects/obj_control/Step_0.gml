/// @description main game loop
if global.score >= 4{
	audio_sound_gain(bkgSoundId, 0, 1200)
	obj_asteroidSpawner.gameStart = false
	obj_textBox.textToShow= "You Win"
	global.score = 0
	transitionStart(rm_level_2, sq_FadeOut, sq_FadeIn)
}



