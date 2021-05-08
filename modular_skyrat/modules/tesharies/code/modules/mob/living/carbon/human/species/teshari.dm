/datum/species/teshari
	// Bird-like humanoids
	name = "Teshari"
	id = "teshari"
	eyes_icon = 'modular_skyrat/modules/tesharies/icons/mob/species/teshari_eyes.dmi'
	limbs_icon = 'modular_skyrat/modules/tesharies/icons/mob/species/teshari_parts.dmi'
	say_mod = "chirps"
	default_color = "001144"
	species_traits = list(MUTCOLORS,EYECOLOR,LIPS,HAS_FLESH,HAS_BONE,HAIR)
	inherent_traits = list(TRAIT_RESISTCOLD, TRAIT_ADVANCEDTOOLUSER)
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID
	mutant_bodyparts = list()
	default_mutant_bodyparts = list()
	attack_verb = "slash"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	liked_food = MEAT | FRIED
	species_language_holder = /datum/language_holder/teshari
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
