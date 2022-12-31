/// @description change game text


//set some variable to true that starts the game
obj_textBox.image_alpha = 0
obj_asteroidSpawner.gameStart = true
activatePlayer()
obj_textBox.textToShow = ""
instance_destroy(self.id)





