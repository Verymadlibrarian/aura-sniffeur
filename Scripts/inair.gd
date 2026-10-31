extends State

@onready var player: CharacterBody3D = owner
@onready var state_machine: StateMachine = get_parent()

func enter() -> void:
	pass
 
# Called every physics frame while this state is active
func physics_update(delta: float) -> void:
	
	if Input.is_action_just_pressed("jamp") && owner.djump == 1:
		owner.djump = 0
		state_machine.transition_to("Jumping")
	
	if owner.is_on_floor():
		state_machine.transition_to("Idle")
	
	pass
