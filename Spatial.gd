extends Spatial

var target_rotation_deg = Vector3()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _input(event):
	if Input.is_action_just_pressed("ui_right"):
		target_rotation_deg.y += 90
	elif Input.is_action_just_pressed("ui_left"):
		target_rotation_deg.y -= 90
#	elif Input.is_action_just_pressed("ui_up"):
#		target_rotation_deg.x += 90
#	elif Input.is_action_just_pressed("ui_down"):
#		target_rotation_deg.x -= 90
		
func _process(delta):
	rotation_degrees=rotation_degrees.move_toward(target_rotation_deg,360*delta)
