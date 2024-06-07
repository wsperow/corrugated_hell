extends Node3D

class_name Interactable

#@export_category("Options")
@export var Interact_Text: String = "Interact"

func get_interaction_text() -> String:
	return Interact_Text

func interact():
	print("Interacted with %s" % name)
	#match Type:
		#InteractType.NONE:
			#do something
	
