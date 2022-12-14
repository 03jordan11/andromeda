/// @description player step

//check keys for movement
moveRight = keyboard_check(ord("D"));
moveLeft = keyboard_check(ord("A"));
moveUp = keyboard_check(ord("W"));
moveDown = keyboard_check(ord("S"));

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

asteroidCollision = collision_rectangle(x-lookRange, y-lookRange, x+lookRange, y+lookRange, obj_asteroidM, false, true)

if asteroidCollision {
	obj_textBox.textToShow = "Game Over"
	instance_destroy(self.id)
	audio_pause_all()
	audio_play_sound(explosion, 1, false)
}

//if nearby{
//	if (!alarmOn){
//		audio_play_sound(proxAlarm, 1, true)
//		alarmOn = true
//	}
//}
//else{
//	if(alarmOn){
//		audio_stop_sound(proxAlarm)
//		alarmOn = false
//	}
//}

