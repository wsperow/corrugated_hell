extends Interactable

class_name ToggleInteractable

enum InteractType { NONE, SWITCH }

#@export_category("Options")

@export var Type: InteractType = InteractType.NONE
@export var Game_Object: Node3D

func interact() -> void: #Returns none
	pass
	#match:
		
	#Game_Object.toggle()
