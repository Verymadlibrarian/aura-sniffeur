extends State

@onready var player: CharacterBody3D = owner
@onready var state_machine: StateMachine = get_parent()

func enter() -> void:
	
	owner.velocity.y += owner.short_hop_velocity
	state_machine.transition_to("InAir")
	pass

func physics_update(delta: float) -> void:
	
	pass
