extends CharacterBody2D
func _physics_process(delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 100
	move_and_slide()
