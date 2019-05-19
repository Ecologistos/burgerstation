/mob/living/advanced/human/npc/unique/shopkeeper
	name = "Shopkeeper Eric"
	desc = "Some may call this junk, me, I call them treasures."
	mob_species = /species/human/
	sex = MALE
	gender = MALE
	dialogue_id = "shopkeeper_dialogue"

/mob/living/advanced/human/npc/unique/shopkeeper/Initialize()
	..()
	change_organ_visual("skin", desired_color = "#FFBAA3")
	change_organ_visual("hair_head", desired_color = "#9E7E6E")
	change_organ_visual("hair_face", desired_color = "#9E7E6E")
	update_all_blends()
	add_outfit("shopkeeper_outfit")
