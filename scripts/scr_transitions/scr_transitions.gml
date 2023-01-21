// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.midTransition = false;
global.roomTarget = -1;

function transitionPlaceSequence(type){
	if(layer_exists("transition")){
		layer_destroy("transition")
	}
	lay = layer_create(-10002, "transition")
	layer_sequence_create(lay, 0, 0, type)
}

function transitionStart(roomTarget, typeOut, typeIn){
	if (!global.midTransition){
		global.midTransition = true;
		global.roomTarget = roomTarget
		transitionPlaceSequence(typeOut)
		layer_set_target_room(roomTarget)
		transitionPlaceSequence(typeIn)
		layer_reset_target_room()
		return true
	}
	else
		return false
}

function transitionChangeRoom(){
	//room_goto_next()
	room_goto(global.roomTarget)
}

function transitionFinished(){
	layer_sequence_destroy(self.elementID)
	global.midTransition = false
}

function endRoomTransition(rmTarget){
	instance_destroy(obj_player)
	layer_sequence_create("Instances", 0, -10, sq_shipEnd)
	layer_set_target_room(rmTarget)
	layer_sequence_create("Instances", 0, 0, sq_FadeIn)
	layer_reset_target_room()
}