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
	global.score++
	createArmorPowerup(droneShot.x, droneShot.y)
	audio_play_sound(enemyExplosion,1,false)
	instance_create_depth(droneShot.x, droneShot.y, -10000, obj_explosion)
	instance_destroy(droneShot.id)
	instance_destroy(self.id)
}

//fighters
fighterShot = instance_place(x, y, obj_fighter)
if fighterShot != noone{
	global.score++
	createShootPowerup(fighterShot.x, fighterShot.y)
	audio_play_sound(enemyExplosion,1,false)
	instance_create_depth(fighterShot.x, fighterShot.y, -10000, obj_explosion)
	instance_destroy(fighterShot.id)
	instance_destroy(self.id)
}