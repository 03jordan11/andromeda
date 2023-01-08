/// @description to typewriter the text

if(self.stringIndex < string_length(self.textToShow)){
	self.stringIndex++
	randomize()
	speedMulti = .08
	if (string_copy(self.textToShow, self.stringIndex-1, 1) == "."){
		speedMulti = .5
	}
	alarm[0] = room_speed * speedMulti
	if irandom(2) == 0
		audio_play_sound(choose(snd_text, snd_text2), 10, false)
}



