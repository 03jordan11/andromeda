/// @description flashes sprite
counter++

if image_alpha != 0{
	image_alpha = 0
}
else{
	image_alpha = 1
}

if counter == maxCounter{
	image_alpha = 1
	counter = 0
	isInvulnerable = false
}





