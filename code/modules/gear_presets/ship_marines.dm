/datum/equipment_preset/uscm_ship/ship_marine
	name = "USCM (Ship Marines)"
	faction = FACTION_MARINE
	minimum_age = 27

//*****************************************************************************************************/

/datum/equipment_preset/uscm_ship/ship_marine/standard
	name = "USCM Ship Marine (SM)"
	flags = EQUIPMENT_PRESET_START_OF_ROUND|EQUIPMENT_PRESET_MARINE

	access = list(
		ACCESS_MARINE_BRIG,
		ACCESS_MARINE_BRIDGE,
		ACCESS_MARINE_DROPSHIP,
		ACCESS_MARINE_LOGISTICS,
		ACCESS_MARINE_PREP,
		ACCESS_MARINE_MEDBAY,
		ACCESS_MARINE_MORGUE,
		ACCESS_MARINE_ALPHA,
		ACCESS_MARINE_BRAVO,
		ACCESS_MARINE_CHARLIE,
		ACCESS_MARINE_DELTA,
		ACCESS_MARINE_ENGINEERING,
		ACCESS_MARINE_MAINT,
		ACCESS_MARINE_OT
	)
	assignment = JOB_SHIP_MARINE
	rank = JOB_SHIP_MARINE
	paygrade = "ME4"
	role_comm_title = "SM"
	skills = /datum/skills/ship_marine

	utility_under = list(/obj/item/clothing/under/marine/ship_marine)
	utility_hat = list(/obj/item/clothing/head/helmet/beret/marine/mp)
	utility_extra = list(/obj/item/clothing/head/cmcap, /obj/item/clothing/head/beret/cm, /obj/item/clothing/head/beret/cm/tan)

	service_over = list(/obj/item/clothing/suit/storage/jacket/marine/service)

/datum/equipment_preset/uscm_ship/ship_marine/standard/load_rank(mob/living/carbon/human/H)
	if(H.client && get_job_playtime(H.client, rank) < JOB_PLAYTIME_TIER_1)
		return "ME2"
	return paygrade

/datum/equipment_preset/uscm_ship/ship_marine/standard/load_gear(mob/living/carbon/human/H)
	var/backItem = /obj/item/storage/backpack/satchel/sec
	if (H.client && H.client.prefs && (H.client.prefs.backbag == 1))
		backItem = /obj/item/storage/backpack/security

	H.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/ship_marine(H), WEAR_L_EAR)
	H.equip_to_slot_or_del(new /obj/item/clothing/under/marine/ship_marine(H), WEAR_BODY)
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/knife(H), WEAR_FEET)
	H.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine(H), WEAR_HANDS)
	H.equip_to_slot_or_del(new /obj/item/storage/belt/security/ship_marine/full(H), WEAR_WAIST)
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/ship_marine(H), WEAR_JACKET)
	if(H.disabilities & NEARSIGHTED)
		H.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/sechud/prescription(H), WEAR_EYES)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/sechud/eyepiece(H), WEAR_EYES)
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/ship_marine(H), WEAR_HEAD)
	H.equip_to_slot_or_del(new backItem(H), WEAR_BACK)
	H.equip_to_slot_or_del(new /obj/item/device/taperecorder(H), WEAR_L_STORE)
	H.equip_to_slot_or_del(new /obj/item/storage/pouch/general/medium(H), WEAR_R_STORE)

//*****************************************************************************************************/

/datum/equipment_preset/uscm_ship/ship_marine/master_at_arms
	name = "USCM Master-at-Arms (MAT)"
	flags = EQUIPMENT_PRESET_START_OF_ROUND|EQUIPMENT_PRESET_MARINE
	idtype = /obj/item/card/id/silver

	access = list(
		ACCESS_MARINE_BRIG,
		ACCESS_MARINE_BRIDGE,
		ACCESS_MARINE_DROPSHIP,
		ACCESS_MARINE_LOGISTICS,
		ACCESS_MARINE_PREP,
		ACCESS_MARINE_WO,
		ACCESS_MARINE_MEDBAY,
		ACCESS_MARINE_COMMANDER,
		ACCESS_MARINE_MORGUE,
		ACCESS_MARINE_ALPHA,
		ACCESS_MARINE_BRAVO,
		ACCESS_MARINE_CHARLIE,
		ACCESS_MARINE_DELTA,
		ACCESS_MARINE_ENGINEERING,
		ACCESS_MARINE_MAINT,
		ACCESS_MARINE_OT,
		ACCESS_MARINE_SYNTH
	)
	assignment = JOB_SHIP_MASTER_AT_ARMS
	rank = JOB_SHIP_MASTER_AT_ARMS
	paygrade = "MO2"
	role_comm_title = "MAT"
	skills = /datum/skills/master_at_arms

	utility_under = list(/obj/item/clothing/under/marine/officer/master_at_arms)
	utility_hat = list(/obj/item/clothing/head/helmet/beret/marine/mp/cmp)
	utility_extra = list(/obj/item/clothing/head/cmcap, /obj/item/clothing/head/beret/cm, /obj/item/clothing/head/beret/cm/tan)

	service_over = list(/obj/item/clothing/suit/storage/jacket/marine/service)

/datum/equipment_preset/uscm_ship/ship_marine/master_at_arms/load_gear(mob/living/carbon/human/H)
	var/backItem = /obj/item/storage/backpack/satchel/sec
	if (H.client && H.client.prefs && (H.client.prefs.backbag == 1))
		backItem = /obj/item/storage/backpack/security

	H.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/master_at_arms(H), WEAR_L_EAR)
	H.equip_to_slot_or_del(new /obj/item/clothing/under/marine/officer/master_at_arms(H), WEAR_BODY)
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine/knife(H), WEAR_FEET)
	H.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine(H), WEAR_HANDS)
	H.equip_to_slot_or_del(new /obj/item/storage/belt/security/ship_marine/full(H), WEAR_WAIST)
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/marine/ship_marine/mat(H), WEAR_JACKET)
	if(H.disabilities & NEARSIGHTED)
		H.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/sechud/prescription(H), WEAR_EYES)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/sechud(H), WEAR_EYES)
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/marine/ship_marine(H), WEAR_HEAD)
	H.equip_to_slot_or_del(new backItem(H), WEAR_BACK)
	H.equip_to_slot_or_del(new /obj/item/device/taperecorder(H), WEAR_L_STORE)
	H.equip_to_slot_or_del(new /obj/item/storage/pouch/general/large(H), WEAR_R_STORE)

//*****************************************************************************************************/

/datum/equipment_preset/uscm_ship/ship_marine/riot_mp
	name = "USCM Riot MP (RMP)"
	flags = EQUIPMENT_PRESET_EXTRA|EQUIPMENT_PRESET_MARINE

	idtype = /obj/item/card/id/silver
	access = list()
	assignment = "Riot Control"
	rank = "Riot"
	paygrade = "ME5"
	role_comm_title = "RMP"
	skills = /datum/skills/master_at_arms

	utility_under = list(/obj/item/clothing/under/marine/officer/master_at_arms)
	utility_hat = list(/obj/item/clothing/head/helmet/beret/marine/mp/cmp)
	utility_extra = list(/obj/item/clothing/head/cmcap, /obj/item/clothing/head/beret/cm, /obj/item/clothing/head/beret/cm/tan)

/datum/equipment_preset/uscm_ship/ship_marine/riot_mp/New()
	. = ..()
	access = get_all_accesses() + get_all_centcom_access()

/datum/equipment_preset/uscm_ship/ship_marine/riot_mp/load_gear(mob/living/carbon/human/H)
	//TODO: add backpacks and satchels

	H.equip_to_slot_or_del(new /obj/item/device/radio/headset/almayer/master_at_arms(H), WEAR_L_EAR)
	H.equip_to_slot_or_del(new /obj/item/clothing/under/marine/officer/master_at_arms(H), WEAR_BODY)
	H.equip_to_slot_or_del(new /obj/item/clothing/suit/armor/riot/marine(H), WEAR_JACKET)
	H.equip_to_slot_or_del(new /obj/item/clothing/head/helmet/riot(H), WEAR_HEAD)
	H.equip_to_slot_or_del(new /obj/item/storage/belt/security/ship_marine/full(H), WEAR_WAIST)
	H.equip_to_slot_or_del(new /obj/item/storage/backpack/satchel/sec(H), WEAR_BACK)
	H.equip_to_slot_or_del(new /obj/item/clothing/mask/gas(H), WEAR_FACE)
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/marine(H), WEAR_FEET)
	H.equip_to_slot_or_del(new /obj/item/weapon/shield/riot(H), WEAR_L_HAND)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/shotgun/combat/riot(H), WEAR_J_STORE)
	H.equip_to_slot_or_del(new /obj/item/clothing/gloves/marine(H), WEAR_HANDS)
	H.equip_to_slot_or_del(new /obj/item/storage/box/flashbangs(H.back), WEAR_IN_BACK)
	H.equip_to_slot_or_del(new /obj/item/explosive/grenade/custom/teargas(H.back), WEAR_IN_BACK)
	H.equip_to_slot_or_del(new /obj/item/explosive/grenade/custom/teargas(H.back), WEAR_IN_BACK)
	H.equip_to_slot_or_del(new /obj/item/explosive/grenade/custom/teargas(H.back), WEAR_IN_BACK)
	H.equip_to_slot_or_del(new /obj/item/explosive/grenade/custom/teargas(H.back), WEAR_IN_BACK)
	H.equip_to_slot_or_del(new /obj/item/handcuffs(H.back), WEAR_IN_BACK)
	H.equip_to_slot_or_del(new /obj/item/handcuffs(H.back), WEAR_IN_BACK)
	H.equip_to_slot_or_del(new /obj/item/storage/pouch/shotgun/large/riot(H), WEAR_L_STORE)
	H.equip_to_slot_or_del(new /obj/item/storage/pouch/shotgun/large/riot(H), WEAR_R_STORE)
	if(H.disabilities & NEARSIGHTED)
		H.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/sechud/prescription(H), WEAR_EYES)
	else
		H.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/sechud(H), WEAR_EYES)

//*****************************************************************************************************/

/datum/equipment_preset/uscm_ship/ship_marine/riot_mp/riot_cmp
	name = "USCM Riot Chief MP (RCMP)"
	flags = EQUIPMENT_PRESET_EXTRA

	assignment = "Chief Riot Control"
	rank = "CRMP"
	paygrade = "MO1"
	role_comm_title = "CRMP"
	skills = /datum/skills/master_at_arms
