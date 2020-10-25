extends Spatial

func _ready():
	pass

func _process(delta):
	var speed = 6
	var direction = Vector3()
	if Input.is_action_pressed("ui_up"):
		direction.z -= 1
	if Input.is_action_pressed("ui_down"):
		direction.z += 1
	if Input.is_action_pressed("ui_left"):
		direction.x -= 1
	if Input.is_action_pressed("ui_right"):
		direction.x += 1
	translation += direction * speed * delta
	#rotation_degrees
