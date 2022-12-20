/// @description dismiss drones


//set some variable to true that starts the game
obj_textBox.textToShow = ""
obj_drone.type = "dismiss drone"
obj_levelTwoControl.alarm[4] = 360
activatePlayer()
instance_destroy(self.id)





