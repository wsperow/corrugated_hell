extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func update_data(foodvalue: int, watervalue: int):
	$FoodBar.set_value(foodvalue)
	$WaterBar.set_value(watervalue)
	
func set_text(text: String):
	$InteractionLabel.set_text(text)
	
func set_label_visible(visible: bool):
	$InteractionLabel.set_visible(visible)
