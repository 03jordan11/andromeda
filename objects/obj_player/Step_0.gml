/// @description player step
if levelOver{
	if(room == rm_level_5){
		if (global.powerUpSound != noone){
			audio_stop_sound(global.powerUpSound)
		}
		//move player to planet
		//if (point_distance(x, y, planet.x, planet.y) > 5){
		//	move_towards_point(planet.x, planet.y, 6)
		//}else{
			finalTransition()
			room_goto_next()
		//}
	}else{
		if (global.powerUpSound != noone){
			audio_stop_sound(global.powerUpSound)
		}
		if (point_distance(x, y, origX, origY) > 5){
			move_towards_point(origX, origY, 6)
		}
		else{
			speed = 0
			if(self.currentControl.alarm[3] == -1){
				self.currentControl.alarm[3] = 30
			}
		}
	}
}
else if canMove{
	//check keys for movement
	moveRight = moveRightInput();
	moveLeft = moveLeftInput()
	moveUp = moveUpInput()
	moveDown = moveDownInput()

	//calculate movement
	vx = ((moveRight - moveLeft) * horFlySpeed);
	vy = ((moveDown - moveUp) * vertFlySpeed);

	//if idle
	if (vx == 0 && vy == 0){
	}

	//if moving
	if(vx != 0 || vy != 0){

		if (!collision_point(x+vx, y, obj_par_boundary, true, true)){
			x += vx;
		}
		if (!collision_point(x, y+vy, obj_par_boundary, true, true)){
			y += vy;
		}
	}
}


asteroidCollision = instance_place(x, y, obj_asteroidM)
droneCollision = instance_place(x, y, obj_drone)
fighterCollision = instance_place(x, y, obj_fighter)
shot = instance_place(x, y, obj_enemy_laser)
bossCollision = instance_place(x, y, obj_boss)
bossShot = instance_place(x, y, obj_bossBall)

if !isInvulnerable{
	if asteroidCollision {
		takeDamage()
	}
	if droneCollision {
		takeDamage()
	}
	if fighterCollision {
		takeDamage()
		instance_destroy(fighterCollision.id)
	}
	if shot {
		takeDamage()
		instance_destroy(shot.id)
	}
	if bossCollision{
		takeDamage()
		takeDamage()
		takeDamage()
	}
	if bossShot{
		takeDamage()
		instance_destroy(bossShot.id)
	}
}else{
	if alarm[0] == -1{
		alarm[0] = 15
	}
}


if counter == maxCounter{
	image_alpha = 1
	counter = 0
	if (global.powerUpSound != noone){
		audio_stop_sound(global.powerUpSound)
	}
	isInvulnerable = false
}

if (shootAndContinueInput() && canShoot){
	if shootTime == 0{
		instance_create_depth(x, y, -10000, obj_laser)
		shootTime = current_time
	}

	if shootPU{
		if (current_time - shootTime) >= 200{
			instance_create_depth(x, y, -10000, obj_laser)
			shootTime = current_time
		}
	}
	else{
		if (current_time - shootTime) >= 500{
			instance_create_depth(x, y, -10000, obj_laser)
			shootTime = current_time
		} 
	}

}