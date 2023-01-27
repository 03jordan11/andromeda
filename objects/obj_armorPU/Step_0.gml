/// @description Insert description here
// You can write your code in this editor

x -= 3

collision = instance_place(x, y, obj_player)

if collision{
	obj_player.isInvulnerable = true
	obj_player.maxCounter = 28
	if audio_is_playing(global.powerUpSound){
		audio_stop_sound(global.powerUpSound)
	}
	global.powerUpSound = audio_play_sound(invulnerability, 1, true)
	obj_player.alarm[2] = 600
	instance_destroy(self.id)
}


