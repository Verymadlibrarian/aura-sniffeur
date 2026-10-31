extends State

@onready var player: CharacterBody3D = owner
@onready var state_machine: StateMachine = get_parent()

func enter() -> void:
	if owner.djump == 0:
		owner.velocity.y = owner.jump_velocity
	else:
		owner.velocity.y += owner.jump_velocity
	state_machine.transition_to("InAir")
	pass

func physics_update(delta: float) -> void:
	
	pass
