/// @description shoot laser
if canShoot{
	if shootTime == 0{
		audio_play_sound(playerShootingSound, 1, false)
		instance_create_depth(x, y, -10000, obj_laser)
		shootTime = current_time
	}

	if shootPU{
		if (current_time - shootTime) >= 200{
			audio_play_sound(playerShootingSound, 1, false)
			instance_create_depth(x, y, -10000, obj_laser)
			shootTime = current_time
		}
	}
	else{
		if (current_time - shootTime) >= 500{
			audio_play_sound(playerShootingSound, 1, false)
			instance_create_depth(x, y, -10000, obj_laser)
			shootTime = current_time
		} 
	}

}

