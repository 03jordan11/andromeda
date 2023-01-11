// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function activatePlayer(){
	obj_player.canMove = true
	obj_player.canShoot = true
}

function takeDamage(){
	obj_player.playerHealth--
	
	if obj_player.playerHealth <= 0{
		obj_textBox.textToShow = "Game Over"
		spawnHearts()
		instance_destroy(obj_player)
		audio_pause_all()
		audio_play_sound(explosion, 1, false)
	}
	else{
		audio_play_sound(damageTaken,1,false)
		obj_player.isInvulnerable = true
		spawnHearts()
	}
	
	//do flashing animate, and disable to 
}


function spawnHearts(){
	if obj_player.playerHealth == 2{
		obj_heart1.image_alpha = 0
	}
	if obj_player.playerHealth == 1{
		obj_heart2.image_alpha = 0
	}
	if obj_player.playerHealth == 0{
		obj_heart3.image_alpha = 0	
	}
}

function regenHeart(){
	if obj_player.playerHealth == 2{
		obj_heart1.image_alpha = 1
	}
	else if obj_player.playerHealth == 1{
		obj_heart2.image_alpha = 1
	}
}

function levelOverScript(controlRef){
	if (point_distance(obj_player.x, obj_player.y, obj_player.origX, obj_player.origY) > 2){
		move_towards_point(obj_player.origX, obj_player.origY, 6)
	}
	else{
		obj_player.speed = 0
		if(controlRef.alarm[3] == -1){
			controlRef.alarm[3] = 30
		}
		

	}
}

function cancelAllAlarms(objRef){
	for (var i = 0; i < 12; i++){
		alarm[i] = -1
	}
}