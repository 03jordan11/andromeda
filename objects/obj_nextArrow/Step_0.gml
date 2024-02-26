/// @description Insert description here
// You can write your code in this editor
var maxLen = string_length(obj_storyTextbox.textToShow)

if(continueInput()){
	if(obj_storyTextbox.stringIndex < maxLen){
		obj_storyTextbox.stringIndex = maxLen
	}
	else{
		instance_destroy(obj_storyTextbox)
		obj_asteroidSpawner.gameStart = true
		activatePlayer()
		instance_destroy(self.id)
	}
}




