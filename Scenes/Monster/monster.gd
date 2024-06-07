extends CharacterBody3D

@onready var navagent = $NavigationAgent3D
@onready var audioplayer = $AudioStreamPlayer3D

var speed = 3.0

func _physics_process(delta):
	var current_location = global_transform.origin
	var next_location = navagent.get_next_path_position()
	var new_velocity = (next_location - current_location).normalized() * speed
	
	velocity = new_velocity
	move_and_slide()
	
	if !audioplayer.playing:
		audioplayer.play()
	
	
func update_target_location(target_position):
	navagent.target_position = target_position
	#look_at(target_position, Vector3(0, 1, 0), true)
	chase_target(target_position)
	
func chase_target(target_position):
	var direction = (target_position - position).normalized()
	#velocity.x = direction.x * speed
	#velocity.z = direction.z * speed

	var angle = atan2(direction.x,direction.z) + deg_to_rad(180.0)
	rotation.y = angle


func _on_navigation_agent_3d_target_reached():
	pass # Replace with function body.
