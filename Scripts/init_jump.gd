extends State


@onready var state_machine: StateMachine = get_parent()

func enter() -> void:
	pass
 
# Called every physics frame while this state is active
func physics_update(delta: float) -> void:
	if state_machine.frames > 3:
		state_machine.transition_to("Jumping")
		print("2")
	elif Input.is_action_just_released("jamp") :
			state_machine.transition_to("ShortHop")
			print("1")
	pass
