/// @description Insert description here
// You can write your code in this editor

x -= 3

collision = instance_place(x, y, obj_player)

if collision{
	regenHeart()
	obj_player.playerHealth++
	instance_destroy(self.id)
}


