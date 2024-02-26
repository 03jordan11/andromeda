/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
var maxLen = string_length(obj_storyTextbox.textToShow)

if(continueInput()){
	if(obj_storyTextbox.stringIndex < maxLen){
		obj_storyTextbox.stringIndex = maxLen
	}
	else{
		obj_drone.type = "dismiss drone"
		obj_levelTwoControl.alarm[4] = 5
		activatePlayer()
		instance_destroy(obj_storyTextbox)
		instance_destroy(self.id)

	}
}
















