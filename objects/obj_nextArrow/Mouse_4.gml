/// @description change game text


//set some variable to true that starts the game
instance_destroy(obj_storyTextbox)
obj_asteroidSpawner.gameStart = true
activatePlayer()
instance_destroy(self.id)





