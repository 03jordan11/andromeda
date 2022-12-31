/// @description Insert description here
// You can write your code in this editor

x -= 3

collision = instance_place(x, y, obj_player)

if collision{
	obj_player.shootPU = true
	//to shut it off
	obj_player.alarm[1] = 300
	instance_destroy(self.id)
}


