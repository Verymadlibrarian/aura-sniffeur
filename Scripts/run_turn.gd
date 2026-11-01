extends State

var direct

@onready var state_machine: StateMachine = get_parent()

func enter() -> void:
	owner.velocity.x /= 2
	direct = owner.velocity.x/abs(owner.velocity.x)
	pass
 
# Called every physics frame while this state is active
func physics_update(delta: float) -> void:
	if Input.is_action_just_pressed("jamp") and owner.is_on_floor():
			state_machine.transition_to("InitJump")
	
	if owner.direction == 0 and state_machine.frames > 3:
		state_machine.transition_to("Idle")
	
	if state_machine.frames > 11:
		if (owner.direction) :
			if direct + owner.direction/abs(owner.direction) == 0:
				state_machine.transition_to("Running")
			else:
				state_machine.transition_to("Idle")
	pass
