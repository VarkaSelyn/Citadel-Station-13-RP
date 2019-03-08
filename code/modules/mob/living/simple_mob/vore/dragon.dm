/mob/living/simple_mob/animal/dragon
	name = "red dragon"
	desc = "Here to pillage stations and kidnap princesses, and there probably aren't any princesses."
	icon = 'icons/mob/vore64x64.dmi'
	icon_dead = "reddragon-dead"
	icon_living = "reddragon"
	icon_state = "reddragon"

	faction = "dragon"
	maxHealth = 500 // Boss
	health = 500

	melee_damage_lower = 10
	melee_damage_upper = 60

	ai_holder_type = /datum/ai_holder/simple_mob

	//Space dragons aren't affected by atmos.
	min_oxy = 0
	max_oxy = 0
	min_tox = 0
	max_tox = 0
	min_co2 = 0
	max_co2 = 0
	min_n2 = 0
	max_n2 = 0
	minbodytemp = 0

	old_x = -16
	old_y = 0
	default_pixel_x = -16
	pixel_x = -16
	pixel_y = 0

	max_buckled_mobs = 1 //Yeehaw
	can_buckle = TRUE
	buckle_movable = TRUE
	buckle_lying = FALSE
	mount_offset_x = -11
	mount_offset_y = 16

	hovering = TRUE
	spacewalk = TRUE

/*
/mob/living/simple_mob/animal/dragon/FindTarget()
	. = ..()
	if(.)
		custom_emote(1,"snaps at [.]")
*/

// Activate Noms!
/mob/living/simple_mob/animal/dragon
	vore_active = 1
	vore_capacity = 2
	vore_pounce_chance = 0 // Beat them into crit before eating.
	vore_icons = SA_ICON_LIVING

/mob/living/simple_mob/animal/dragon/virgo3b
	maxHealth = 200
	health = 200
	faction = "virgo3b"

/mob/living/simple_mob/animal/dragon/Login()
	. = ..()
	if(!riding_datum)
		riding_datum = new /datum/riding/simple_mob(src)
	verbs |= /mob/living/simple_mob/proc/animal_mount

/mob/living/simple_mob/animal/dragon/MouseDrop_T(mob/living/M, mob/living/user)
	return