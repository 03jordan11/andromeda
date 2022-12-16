/// @description movement and collision
x += 10

astShot = instance_place(x, y, obj_asteroidM)

if astShot != noone{
	instance_destroy(self.id)
	astShot.durability -= 1
}

//drones
droneShot = instance_place(x, y, obj_drone)

if droneShot != noone{
	instance_destroy(droneShot.id)
	instance_destroy(self.id)
}