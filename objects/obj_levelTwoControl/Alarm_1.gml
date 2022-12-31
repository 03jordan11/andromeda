/// @description scripted drone meeting
spawnAsteroids = false
alarm[2] = -1
instance_destroy(obj_asteroidM)
obj_player.canShoot = false
obj_textBox.textToShow = secondText
obj_textBox.image_alpha = 0.5
instance_create_depth(500, 350, -10000, obj_droneArrow)
spawnScriptedDrones()
scriptDone = true



