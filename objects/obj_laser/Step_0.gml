/// @description movement and collision
x += 10

isShot = instance_place(x, y, obj_asteroidM)

if isShot != noone{
	show_debug_message("I've been hit")
	instance_destroy(self.id)
	isShot.durability -= 1
}