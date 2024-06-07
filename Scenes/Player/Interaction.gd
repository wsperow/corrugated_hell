extends RayCast3D

var current_collider

signal set_text(text: String)
signal set_label_visible(visible: bool)

func _ready():
	set_interaction_text("")

func _process(delta):
	var collider = get_collider()
	
	if is_colliding() and "Interactable" in collider.get_groups():
		if current_collider != collider:
			set_interaction_text(collider.get_interaction_text())
			current_collider = collider
		
		if Input.is_action_just_pressed("interact_key"):
			collider.interact()
			set_interaction_text(collider.get_interaction_text())
	elif current_collider:
		current_collider = null
		set_interaction_text("")

func set_interaction_text(text):
	if !text:
		#ui.set_text("")
		#ui.set_label_visible(false)
		set_text.emit("")
		set_label_visible.emit(false)
	else:
		#ui.set_text("Press F to %s" % [text])
		#ui.set_label_visible(true)
		set_text.emit("Press F to %s" % [text])
		set_label_visible.emit(true)
