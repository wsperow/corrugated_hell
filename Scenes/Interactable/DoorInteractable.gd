extends Interactable

class_name DoorInteractable

enum InteractType { OPEN, LOCKED, TRIGGER } #can player directly open door? if not, how?
enum DoorType { SWING, SLIDING, DOUBLE, BLAST}

@export var InteractMethod: InteractType = InteractType.OPEN
@export var Type: DoorType = DoorType.SWING

func interact():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
