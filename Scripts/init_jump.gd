extends State


@onready var state_machine: StateMachine = get_parent()
@onready var animation_player: AnimationPlayer = $"../../AnimationPlayer"

func enter() -> void:
	animation_player.play("Init_Jump")
	pass
 
# Called every physics frame while this state is active
func physics_update(delta: float) -> void:
	if state_machine.frames > 3:
		state_machine.transition_to("Jumping")
	elif Input.is_action_just_released("jamp") :
			state_machine.transition_to("ShortHop")
	pass
