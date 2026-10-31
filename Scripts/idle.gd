extends State

@onready var player: CharacterBody3D = owner
@onready var state_machine: StateMachine = get_parent()

func enter() -> void:
	owner.djump = 1
	owner.velocity.x = 0
	pass
 
# Called every physics frame while this state is active
func physics_update(delta: float) -> void:
	
	if owner.direction != 0:
		if abs(owner.direction) > 0.1 and abs(owner.direction) < 0.15:
			state_machine.transition_to("Walking")
		elif abs(owner.direction) > 0.15:
			state_machine.transition_to("Dash")
		
		pass
	
	if Input.is_action_just_pressed("jamp") and owner.is_on_floor():
		state_machine.transition_to("InitJump")
	
	if not owner.is_on_floor():
		state_machine.transition_to("InAir")
	
	pass
