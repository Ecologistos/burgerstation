/loadout/nanotrasen/soldier
	spawning_items = list(
		/obj/item/clothing/shirt/normal/security,
		/obj/item/clothing/pants/normal/security,
		/obj/item/clothing/feet/shoes/black_boots,
		/obj/item/clothing/feet/shoes/black_boots/left,
		/obj/item/clothing/ears/headset,
		/obj/item/clothing/glasses/sun,
		/obj/item/clothing/hands/gloves/colored/padded/black,
		/obj/item/clothing/hands/gloves/colored/padded/black/left,
		/obj/item/clothing/head/helmet/polymorphic/security,
		/obj/item/clothing/overwear/armor/medium_armor/security,
		/obj/item/clothing/neck/cloak/nanotrasen,
		/obj/item/clothing/back/storage/backpack/black,
		/obj/item/clothing/belt/storage/colored/black,
		/obj/item/weapon/ranged/bullet/magazine/rifle/nt_carbine,
		/obj/item/magazine/rifle_556,
		/obj/item/magazine/rifle_556,
		/obj/item/magazine/rifle_556,
		/obj/item/magazine/rifle_556,
		/obj/item/magazine/rifle_556,
		/obj/item/magazine/rifle_556,
		/obj/item/magazine/rifle_556,
		/obj/item/magazine/rifle_556,
		/obj/item/magazine/rifle_556,
		/obj/item/magazine/rifle_556,
		/obj/item/weapon/ranged/bullet/magazine/pistol/military/nanotrasen,
		/obj/item/magazine/pistol_9mm,
		/obj/item/magazine/pistol_9mm,
		/obj/item/magazine/pistol_9mm,
		/obj/item/magazine/pistol_9mm,
		/obj/item/magazine/pistol_9mm,
		/obj/item/weapon/melee/energy/stunbaton
	)

/loadout/nanotrasen/soldier/pre_add(var/mob/living/advanced/A,var/obj/item/I)

	if(istype(I,/obj/item/weapon/ranged/))
		var/obj/item/weapon/ranged/R = I
		if(R.firing_pin)
			R.firing_pin = /obj/item/firing_pin/electronic/iff/nanotrasen

	if(istype(I,/obj/item/weapon/ranged/bullet/magazine))
		var/obj/item/weapon/ranged/bullet/magazine/M = I
		if(SSweapons.weapon_to_magazine[M.type])
			M.stored_magazine = pick(SSweapons.weapon_to_magazine[M.type])

	return ..()