/obj/item/stack/sheet/mineral/gold/Initialize(mapload, new_amount, merge = TRUE, list/mat_override = null, mat_amt = 1)
	. = ..()
	AddComponent(/datum/component/selling, 50, "precious metal", FALSE)

/obj/item/stack/sheet/mineral/diamond
	var/fence_value = 1000
	var/fence_illegal = FALSE

/obj/item/stack/sheet/mineral/diamond/Initialize(mapload, new_amount, merge = TRUE, list/mat_override = null, mat_amt = 1)
	. = ..()
	AddComponent(/datum/component/selling, fence_value, "gem", fence_illegal)

/obj/item/stack/sheet/mineral/diamond/crown
	name = "The Crown Diamond"
	merge_type = /obj/item/stack/sheet/mineral/diamond/crown
	fence_value = 5000
	fence_illegal = TRUE

/obj/item/stack/sheet/mineral/diamond/heart
	name = "The Heart Diamond"
	merge_type = /obj/item/stack/sheet/mineral/diamond/heart
	fence_value = 5000
	fence_illegal = TRUE
