/obj/structure/interactive/lighting/tube
	name = "tube light"

	icon = 'icons/obj/structure/modern/lights.dmi'
	icon_state = "tube"

	light_power = 0.25
	light_range = 4
	light_color = "#FFFFAA"

	layer = LAYER_LARGE_OBJ

	density = 0

/obj/structure/interactive/lighting/tube/New()
	..()
	update_icon()

/obj/structure/interactive/lighting/tube/update_icon()

	icon = initial(icon)

	var/icon/I = new/icon(icon,icon_state)
	var/icon/O = new/icon(icon,icon_state + "_overlay")

	I.Blend(O,ICON_OVERLAY)

	icon = I