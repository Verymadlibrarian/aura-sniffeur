extends State

var direct

@onready var player: CharacterBody3D = owner
@onready var state_machine: StateMachine = get_parent()

func enter() -> void:
	direct = owner.direction / abs(owner.direction)
	pass
 
# Called every physics frame while this state is active
func physics_update(delta: float) -> void:
	if Input.is_action_just_pressed("jamp") and owner.is_on_floor():
		state_machine.transition_to("InitJump")
	if direct + owner.direction/abs(owner.direction) == 0 or owner.direction == 0:
		state_machine.transition_to("RunTurn")
		
	owner.velocity.x = owner.direction/abs(owner.direction) * owner.sprint_speed
	pass
