/// @description shoot laser

if shootTime == 0{
	instance_create_depth(x, y, -10000, obj_laser)
	shootTime = current_time
}

if (current_time - shootTime) >= 500{
	instance_create_depth(x, y, -10000, obj_laser)
	shootTime = current_time
} 
