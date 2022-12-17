/// @description controlling movement

//animating blinking
if image_index == image_number && alarm[0] == -1{
	//stop animating
	image_speed = 0
	//start it again at a random time
	randomize()
	hangTime = irandom_range(30,360)
	alarm[0] = hangTime
}



if type == "script"{
	if x >= 700{
		x -= horSpeed
	}
}
else if type == "dismiss drone"{
	x += horSpeed
}
else if type == "circle"{
	x -= horSpeed
}
else{
	x -= horSpeed
	y = sine_wave((current_time-(spawnOrder*200))/1000, 1, 64, initialY)
}


