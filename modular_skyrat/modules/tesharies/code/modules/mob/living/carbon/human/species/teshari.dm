/datum/species/teshari
	// Bird-like humanoids
	name = "Teshari"
	id = "teshari"
	eyes_icon = 'modular_skyrat/modules/tesharies/icons/mob/species/teshari_eyes.dmi'
	limbs_icon = 'modular_skyrat/modules/tesharies/icons/mob/species/teshari_parts.dmi'
	say_mod = "chirps"
	default_color = "001144"
	species_traits = list(
		MUTCOLORS,
		EYECOLOR,
		LIPS,
		HAS_FLESH,
		HAS_BONE,
		HAIR,
		FACEHAIR
	)
	inherent_traits = list(
		TRAIT_RESISTCOLD,
		TRAIT_ADVANCEDTOOLUSER,
		TRAIT_CAN_STRIP
	)
	inherent_biotypes = MOB_ORGANIC|MOB_HUMANOID
	mutant_bodyparts = list()
	default_mutant_bodyparts = list(
		"tailmark" = "None",
		"tail" = "Tesh Tail"
	)
	attack_verb = "slash"
	attack_sound = 'sound/weapons/slash.ogg'
	miss_sound = 'sound/weapons/slashmiss.ogg'
	liked_food = MEAT | FRIED
	species_language_holder = /datum/language_holder/teshari
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
	learnable_languages = list(/datum/language/common, /datum/language/teshari)

/datum/species/vox/get_random_features()
	var/list/returned = MANDATORY_FEATURE_LIST
	returned["mcolor"] = pick("7D8", "7DA", "7CD", "7DC")
	returned["mcolor2"] = pick("ED8", "EC8")
	returned["mcolor3"] = pick("222", "4EF", "4FB", "84F", "323")
	return returned

/datum/species/vox/get_random_body_markings(list/passed_features)
	var/name = pick(list("Tesh Feathers", "Tesh Fluff", "Tesh SF"))
	var/datum/body_marking_set/BMS = GLOB.body_marking_sets[name]
	var/list/markings = list()
	if(BMS)
		markings = assemble_body_markings_from_set(BMS, passed_features, src)
	return markings
