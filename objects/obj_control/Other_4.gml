/// @description Initialize music

// play music based on room

switch room{
	case rm_gameMain: {
		bkgSoundId = audio_play_sound(space,1,true);
	};break;
}


