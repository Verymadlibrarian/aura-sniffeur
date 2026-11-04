extends State


@onready var state_machine: StateMachine = get_parent()
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func enter() -> void:
	if Input.get_action_strength("Coruch") > 0.3:
		owner.set_collision_layer_value(1, true)
		owner.set_collision_layer_value(2, false)
		owner.set_collision_mask_value(1, false)
		owner.set_collision_mask_value(2, true)
	pass
 
# Called every physics frame while this state is active
func physics_update(delta: float) -> void:
	
	if not owner.is_on_floor():
		state_machine.transition_to("InAir")
	
	if Input.is_action_just_pressed("jamp"):
		state_machine.transition_to("InitJump")
	if Input.is_action_just_released("Coruch"):
		state_machine.transition_to("Idle")
	
	pass


func exit() -> void:
	owner.set_collision_layer_value(1, false)
	owner.set_collision_layer_value(2, true)
	owner.set_collision_mask_value(1, true)
	owner.set_collision_mask_value(2, false)
	pass
