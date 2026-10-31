extends RayCast3D

@onready var platforme: Node3D = $"../../platforme"
@onready var perso_1: CharacterBody3D = $".."

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var collider = get_collider()
	#print(collider)
	
	if collider and collider.is_in_group("transparent_plaftorms"):
		# Safely find the CollisionShape3D instead of hardcoding get_child(1)
		for child in collider.get_children():
			if child is CollisionShape3D:
				#print(child)
				perso_1.set_collision_layer_value(1, false)
				perso_1.set_collision_layer_value(2, true)
				perso_1.set_collision_mask_value(1, true)
				perso_1.set_collision_mask_value(2, false)
				break
	else:
		perso_1.set_collision_layer_value(1, true)
		perso_1.set_collision_layer_value(2, false)
		perso_1.set_collision_mask_value(1, false)
		perso_1.set_collision_mask_value(2, true)
	
	#print("1 : ",perso_1.get_collision_layer_value(1), ", 2 :",  perso_1.get_collision_layer_value(2))
	pass
