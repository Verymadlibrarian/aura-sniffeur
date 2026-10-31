extends State

@onready var player: CharacterBody3D = owner
@onready var state_machine: StateMachine = get_parent()

func enter() -> void:
	pass
 
# Called every physics frame while this state is active
func physics_update(delta: float) -> void:
	if owner.direction == 0:
		state_machine.transition_to("Idle")
		
	owner.velocity.x = owner.direction * owner.sprint_speed
	pass
