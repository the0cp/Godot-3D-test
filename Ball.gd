extends MeshInstance

func _ready():
	pass
	
func _process(delta):
	var speed = 6
	var direction = Vector3()
	if Input.is_action_pressed("CTRL"):
		direction.y -= 1
	if Input.is_action_pressed("SHIFT"):
		direction.y += 1
	direction = direction.normalized()
	translation += direction * speed * delta
