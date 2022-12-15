/// @description main game loop
if self.score >= 1{
	audio_sound_gain(bkgSoundId, 0, 1200)
	obj_asteroidSpawner.gameStart = false
	obj_textBox.textToShow= "You Win"
	room_goto_next()
}



