/// @description ship behavior

//they need to shoot at random times, but in patterned random times
show_debug_message(counter)
if alarm[0] == -1 && counter < waitTime {
	//this will be alert too shoot one round
	alarm[0] = timeBetweenShots
}else{
	if alarm[1] == -1
		alarm[1] =  180
}


//x -= fighterSpeed
if !willAdvance && (obj_player.x <= (x )){
	if !moving{
		move_towards_point(obj_player.x + 100, obj_player.y, fighterSpeed)
		}
	moving = true
}
else{
    speed = 0
	x -= fighterSpeed
}


