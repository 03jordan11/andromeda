/// @description controlling movement

//y = sin(current_time * 2 * pi / 1000) * 64 + 200


if type == "script"{
	if x >= 700{
		x -= horSpeed
	}
}
else if type == "dismiss drone"{
	x += horSpeed
}
else{
	x -= horSpeed
	y = sine_wave((current_time-(spawnOrder*200))/1000, 1, 64, 200)
}


