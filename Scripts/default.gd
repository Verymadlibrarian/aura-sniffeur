extends State


@onready var state_machine: StateMachine = get_parent()
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func enter() -> void:
	pass
 
# Called every physics frame while this state is active
func physics_update(delta: float) -> void:
	pass
