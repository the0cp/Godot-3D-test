extends Spatial

func _ready():
	translation.x = 3

func _process(delta):
	rotation_degrees.x += 6
	rotation_degrees.z += 3
	rotation_degrees.y += 3
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
