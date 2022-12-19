// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

///@function spawnAsteroid()
function spawnAsteroid(){
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
}

///@function fighterShoot()
function fighterShoot(xPos, yPos){
	instance_create_depth(xPos, yPos, -10000, obj_enemy_laser)
}

///@function spawnFighter()
function spawnFighter(){
	randomize()
	
	xPos = 960 + 64
	yPos = irandom_range(64, 540-64)
	instance_create_depth(xPos, yPos, -10001, obj_fighter)
}

//@function spawnDrones()
function spawnCircularDrones(){
	randomize()
	MIN_RADIUS = 64
	MAX_RADIUS = 180
	MID_RADIUS = ((MAX_RADIUS - MIN_RADIUS)/2) + MIN_RADIUS
	SPRITE_SIZE = 32
	ANGLE_VALUE = sqrt(2)/2
	
	radius = irandom_range(MIN_RADIUS, MAX_RADIUS)
	xOrig = 960+64
	yOrig = irandom_range(64+SPRITE_SIZE, 540 - MAX_RADIUS - SPRITE_SIZE)
	
	droneChar = 
	{
		type: "circle",
		horSpeed: irandom_range(3, 7)
	}
	
	instance_create_depth(xOrig, yOrig + radius, -10000, obj_drone, droneChar)
	instance_create_depth(xOrig, yOrig - radius, -10000, obj_drone, droneChar)
	instance_create_depth(xOrig + radius, yOrig, -10000, obj_drone, droneChar)
	instance_create_depth(xOrig - radius, yOrig, -10000, obj_drone, droneChar)
	//if the radius is above the midpoint, spawn more in the circle
	if (radius > MID_RADIUS){
		rad = ANGLE_VALUE * radius
		instance_create_depth(xOrig + rad, yOrig + rad, -10000, obj_drone, droneChar)
		instance_create_depth(xOrig + rad, yOrig - rad, -10000, obj_drone, droneChar)
		instance_create_depth(xOrig - rad, yOrig + rad, -10000, obj_drone, droneChar)
		instance_create_depth(xOrig - rad, yOrig - rad, -10000, obj_drone, droneChar)
	}
}

function spawnSinDrones(){
	mag = 64//irandom_range(64, 180)
	spacing = 64
	xOrig = 210//960+64
	yOrig = 200//irandom_range(64, 540-180)
	position = []
	period = spacing*9
	
	top = yOrig - mag
	bot = yOrig + mag
	mid = mag/2
	
	spawnHorDrones(9)
	//spawnVertDrones(9)
}

function spawnHorDrones(num){
	randomize()
	xOrig = 960+64
	yOrig = irandom_range(64, 540-180)
	spacing = 64
	
	droneSpeed = irandom_range(3, 7)
	for(var i = 0; i < num; i++){
		instance_create_depth(xOrig + spacing*i, yOrig, -10000, obj_drone, {
			horSpeed: droneSpeed,
			spawnOrder: i,
			initialY: yOrig
		})
	}
}

function spawnVertDrones(num){
	xOrig = 210
	yOrig = 32
	spacing = 64
	for(var i = 0; i < num; i++){
		instance_create_depth(xOrig, yOrig + spacing * i, -10000, obj_drone, {
			horSpeed: 4
		})		
	}
}

function sine_wave(time, period, amp, mid){
	return sin(time * 2 * pi / period) * amp + mid
}

function spawnScriptedDrones(){
	instance_create_depth(960+64, 64, -10000, obj_drone, {
			horSpeed: 2,
			type: "script"
		})
	instance_create_depth(960+64, 540-64, -10000, obj_drone, {
			horSpeed: 2,
			type: "script"
		})		
}