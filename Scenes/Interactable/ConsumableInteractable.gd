extends Interactable

class_name ConsumableInteractable

enum ConsumableType { FOOD, WATER, KEY }

@export_category("Options")
@export var Type: ConsumableType = ConsumableType.FOOD
@export_category("Resources")
@export  var player: CharacterBody3D


@export_category("Stats")
@export var AMMOUNT_TO_GIVE: int = 20
@export var KEY_TYPE: String = "Key Name"

func get_interaction_text():
	return Interact_Text

func interact():
	print("Interacted with %s" % name)
	match Type:
		ConsumableType.FOOD:
			#get_tree().call_group("Player", "give_food", AMMOUNT_TO_GIVE)
			player.give_food(AMMOUNT_TO_GIVE)
			print("gave food!")
		ConsumableType.WATER:
			player.give_water(AMMOUNT_TO_GIVE)
		ConsumableType.KEY:
			player.give_key(KEY_TYPE)
