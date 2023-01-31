/// @description fighting player
if !instance_exists(obj_player){
	x += 8
}else{
//stay a certain distance away from the player at all times
maxOffset = 300
angle = point_direction(x, y, obj_player.x + maxOffset, obj_player.y)
distance = point_distance(x, y, obj_player.x + maxOffset, obj_player.y)
//ADVANCE
if distance > 10 && canMove{
	move_towards_point(obj_player.x + maxOffset, obj_player.y, SPEED)
}


if chargeUp{
	//start animation
	//check frame
	//if frame == endFrame, attack, reset variables
	if(current_time > (timer + (1000*3))){
		canMove = true
		//Resets chargeUp to false in specified time
		if alarm[0] == -1{
			alarm[0] = 60 * 5
		}
	}

}

//CHARGE UP AND ATTACK
if distance < 10{
	speed = 0
	if (!chargeUp){
		canMove = false
		chargeUp = true
		//start animation
		timer = current_time
		if alarm[1] == -1{
			alarm[1] = 60
		}
	}
}

hitLaser = instance_place(x, y, obj_laser)
if hitLaser != noone{
	bossHealth--
	audio_play_sound(bossHit, 1, false)
	instance_destroy(hitLaser)
	if bossHealth <= 0{
		instance_destroy(self.id)
	}
}
}