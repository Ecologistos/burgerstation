/damagetype/blunt/stunbaton
	name = "stunbaton off"
	id = "stunbaton_off"

	base_attack_damage = list(
		BRUTE = 5,
		BURN = 0,
		TOX = 0,
		OXY = 0
	)

	attribute_stats = list(
		ATTRIBUTE_STRENGTH = CLASS_C,
		ATTRIBUTE_AGILITY = CLASS_E,
		ATTRIBUTE_INTELLIGENCE = CLASS_F
	)

	attribute_damage = list(
		ATTRIBUTE_STRENGTH = BRUTE,
		ATTRIBUTE_AGILITY = BRUTE,
		ATTRIBUTE_INTELLIGENCE = BRUTE
	)

	skill_stats = list(
		SKILL_UNARMED = CLASS_F,
		SKILL_MELEE = CLASS_E,
		SKILL_RANGED = CLASS_F
	)

	skill_damage = list(
		SKILL_UNARMED = BRUTE,
		SKILL_MELEE = BRUTE,
		SKILL_RANGED = BRUTE
	)

	skill_xp_per_damage = list(
		SKILL_UNARMED = 0,
		SKILL_MELEE = 1,
		SKILL_RANGED = 0
	)

/damagetype/blunt/stunbaton/on
	name = "stunbaton on"
	id = "stunbaton_on"

	base_attack_damage = list(
		BRUTE = 5,
		BURN = 20,
		TOX = 0,
		OXY = 0
	)