/// @description Insert description here
// You can write your code in this editor

x -= 3

collision = instance_place(x, y, obj_player)

if collision{
	regenHeart()
	obj_player.playerHealth++
	audio_play_sound(heallthPU, 1, false)
	instance_destroy(self.id)
}


