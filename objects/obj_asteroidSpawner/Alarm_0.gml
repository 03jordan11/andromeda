/// @description spawning asteroid


xPos = 960+64
yPos = irandom_range(64,540 - 64)
asteroidType = irandom(10)
if asteroidType <= 4{
	instance_create_depth(xPos, yPos, -10000, obj_asteroidS)
}
else if asteroidType <= 7{
	instance_create_depth(xPos, yPos, -10000, obj_asteroidM)
}
else{
	instance_create_depth(xPos, yPos, -10000, obj_asteroidL)
}