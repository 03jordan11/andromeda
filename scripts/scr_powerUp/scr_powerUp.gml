// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function createHealthPowerup(xPos, yPos){
	randomize()
	if (current_time - global.healthSpawnTime) > 6000{
		if(irandom(3) == 0){
			instance_create_depth(xPos, yPos, -10000, obj_healthPU)
			global.healthSpawnTime = current_time
		}
	}
}

function createArmorPowerup(xPos, yPos){
	randomize()
	if (current_time - global.armorSpawnTime) > 8000{
		if(irandom(3) == 0) {
			instance_create_depth(xPos, yPos, -10000, obj_armorPU)
			global.armorSpawnTime = current_time
		}
	}
}

function createShootPowerup(xPos, yPos){
	randomize()
	if (current_time - global.shootSpawnTime) > 6000 && !obj_player.shootPU{
		if(irandom(1) == 0) {
			instance_create_depth(xPos, yPos, -10000, obj_shootPU)
			global.shootSpawnTime = current_time
		}
	}
}