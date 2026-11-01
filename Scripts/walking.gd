extends State

@onready var player: CharacterBody3D = owner
@onready var state_machine: StateMachine = get_parent()
@onready var animation_player: AnimationPlayer = $"../../AnimationPlayer"

func enter() -> void:
	animation_player.play("Walk")
	pass
 
# Called every physics frame while this state is active
func physics_update(delta: float) -> void:
	if owner.direction == 0:
		state_machine.transition_to("Idle")
	
	if Input.is_action_just_pressed("jamp") and owner.is_on_floor():
		state_machine.transition_to("InitJump")
		
	owner.velocity.x = owner.direction * owner.walk_speed
	pass
