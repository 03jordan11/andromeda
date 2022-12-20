/// @description scripted drone meeting
spawnAsteroids = false
instance_destroy(obj_asteroidM)
obj_player.canShoot = false
obj_textBox.textToShow = secondText
instance_create_depth(500, 350, -10000, obj_droneArrow)
spawnScriptedDrones()
scriptDone = true



