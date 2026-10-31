extends CharacterBody3D

var gravity: float = ProjectSettings.get_setting("physics/3d/default_gravity")
var speed = 14
var jump_velocity = 50
var djump = 1
var fall_speed_ceiling = -18

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var direction = Vector3.ZERO
	if Input.is_action_pressed("move_ritgh"):
		direction.x += 1
	elif Input.is_action_pressed("move_letf"):
		direction.x += -1
	else:
		direction.x += 0
	if Input.is_action_just_pressed("jamp") and is_on_floor():
		velocity.y += jump_velocity
	elif Input.is_action_just_pressed("jamp") and djump == 1:
		velocity.y = jump_velocity
		djump = 0
	if not is_on_floor() and velocity.y > fall_speed_ceiling:
		velocity.y -= gravity / 3
	if is_on_floor():
		djump = 1
	velocity.x = direction.x * speed
	
	pass
