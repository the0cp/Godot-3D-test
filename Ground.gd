extends MeshInstance

func _process(delta):
	var speed = 6
	var direction = Vector3()
	if Input.is_action_pressed("ui_up"):
		direction.z += 1
	if Input.is_action_pressed("ui_down"):
		direction.z -= 1
	if Input.is_action_pressed("ui_left"):
		direction.x += 1
	if Input.is_action_pressed("ui_right"):
		direction.x -= 1
	if Input.is_action_pressed("CTRL"):
		direction.y -= 1
	if Input.is_action_pressed("SHIFT"):
		direction.y += 1
	direction = direction.normalized()
	translation += direction * speed * delta
	
