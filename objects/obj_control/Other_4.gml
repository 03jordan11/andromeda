/// @description Initialize music

// play music based on room
global.score = 0
global.healthSpawnTime = 0
global.shootSpawnTime = 0
global.armorSpawnTime = 0

switch room{
	case rm_gameMain: {
		bkgSoundId = audio_play_sound(space,1,true);
	};break;
}



