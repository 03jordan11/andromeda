/// @description pausing

gpu_set_blendenable(false);

if (pause){
	surface_set_target(application_surface)
	
	if(surface_exists(pauseSurf)){
		//surface_set_target(pauseSurf)
		//instance_create_depth(500, 200, -10100, obj_buttonExit)
		draw_surface(pauseSurf, 0, 0)
	}
	else{
		pauseSurf = surface_create(resW, resH)
		buffer_set_surface(pauseSurfBuffer, pauseSurf, 0)
	}
	
	surface_reset_target()
}

if (keyboard_check_pressed(vk_escape)){
	if (!pause){
		pause = true
		instance_create_depth(200, 200, -10200, obj_back)
		instance_deactivate_all(true)
		
		pauseSurf = surface_create(resW, resH)
		surface_set_target(pauseSurf)
		draw_surface(application_surface, 0, 0)
		surface_reset_target()
		
		if (buffer_exists(pauseSurfBuffer)){
			buffer_delete(pauseSurfBuffer)
		}
		pauseSurfBuffer = buffer_create(resW*resH*4, buffer_fixed, 1)
		buffer_get_surface(pauseSurfBuffer, pauseSurf, 0)
	}
	else{
		pause = false
		instance_activate_all()
		if(surface_exists(pauseSurf)){
			surface_free(pauseSurf)
		}
		if(buffer_exists(pauseSurfBuffer)){
			buffer_delete(pauseSurfBuffer)
		}
	}
}

gpu_set_blendenable(true)



