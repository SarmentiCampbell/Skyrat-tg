/obj/item/book/granter/traitsr //They're for traits from our skyrat idk what else to say dude
	var/traits
	var/traitname = "bug"
	var/greet = "You have learned the way in breaking code. Congrats."


/obj/item/book/granter/traitsr/already_known(mob/user)
	if(!traits)
		return TRUE
	if(HAS_TRAIT(src, (traits))) //ffs why is this?
		to_chat(user, "<span class='boldwarning'>You already know about [traitname].</span>")
		return
	return FALSE

/obj/item/book/granter/traitsr/on_reading_start(mob/user)
	to_chat(user, "<span class='notice'>You start reading about [traitname]...</span>")

/obj/item/book/granter/traitsr/on_reading_finished(mob/user)
	to_chat(user, "[greet]")
	ADD_TRAIT(user, (traits), type) //wtf
	user.log_message("Gained the ability [traitname] ([traits])", LOG_ATTACK, color="orange")
	onlearned(user)

/obj/item/book/granter/traitsr/onlearned(mob/user)
	..()
	if(oneuse)
		user.visible_message("<span class='warning'>[src] glows dark for a second!</span>")

/obj/item/book/granter/traitsr/amogusbook
	traits = TRAIT_VENTCRAWLER_ALWAYS
	name = "Suspicious manual"
	traitname = "venting and you"
	desc = "A shoddily written pamphlet with odd doodles in the margins, one of them being vaguely spaceman shaped. Among the less intelligible sentences in it, the word “Amogus” can be read.."
	greet = "<span class='boldannounce'>You've mastered the art of being a impostor!</span>"
	icon_state = "cqcmanual"
	remarks = list("When the impostor is sus..", "Emergency meeting..", "Venting..", "Vote them off..")
