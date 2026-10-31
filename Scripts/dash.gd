extends State

var direct
@onready var state_machine: StateMachine = get_parent()

func enter() -> void:
	owner.velocity.x = owner.direction/abs(owner.direction) * owner.dash_speed
	direct = owner.direction / abs(owner.direction)
	pass
 
# Called every physics frame while this state is active
func physics_update(delta: float) -> void:
	if state_machine.frames < owner.dash_lenght:
		
		if Input.is_action_just_pressed("jamp") and owner.is_on_floor():
			state_machine.transition_to("InitJump")
		
		if owner.direction != 0:
		
			if direct + (owner.direction/abs(owner.direction)) == 0:
				print("Changement")
				owner.velocity.x = owner.direction * owner.dash_speed
				state_machine.frames = 0
				direct = owner.direction / abs(owner.direction)
		
				

	else:
		if owner.direction != 0:
			state_machine.transition_to("Running")
		else:
			state_machine.transition_to("Idle")
		
	pass
