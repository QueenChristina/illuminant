extends CollisionShape

var og_pos

# Called when the node enters the scene tree for the first time.
func _ready():
	og_pos = translation + Vector3()
	
func _process(delta):
	var goth_camera = get_viewport().get_camera()
	var cat=goth_camera.get_node("../../RigidBody")
	var view_vector=goth_camera.global_transform.basis.xform(Vector3(0.0,0.0,1.0))
	var new_t=og_pos+Vector3()
	var cat_vec=cat.translation
	if abs(view_vector.x)>0.99:
		new_t.x = cat_vec.x
	elif abs(view_vector.y) > 0.99:
		new_t.y = cat_vec.y
	elif abs(view_vector.z) > 0.99:
		new_t.z = cat_vec.z
	translation=new_t
	
