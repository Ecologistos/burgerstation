/client/proc/update_zoom(var/desired_zoom_level)

	if(!mob || !eye || eye != mob || desired_zoom_level == -1)
		desired_zoom_level = MIN_ZOOM + 1
	else if(desired_zoom_level < 0)
		desired_zoom_level = initial(zoom_level)

	zoom_level = Clamp(desired_zoom_level,MIN_ZOOM,MAX_ZOOM)

	winset(src, "map.map","icon-size=[zoom_level*TILE_SIZE];zoom-mode=normal")


/client/MouseWheel(object,delta_x,delta_y,location,control,params)

	if(allow_zoom_controls && is_zoomed)
		var/change_in_screen = delta_y > 1 ? 1 : -1
		update_zoom(zoom_level + change_in_screen)
		return TRUE

	mob.do_mouse_wheel(object,delta_x,delta_y,location,control,params)

	return TRUE