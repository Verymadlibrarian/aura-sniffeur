extends Node
class_name StateMachine

@onready var idle: State = $Idle
@export var initial_state: State #PIN

var current_state: State

var frames = 0
var new_frame = 0

func frame():
	frames += 1

func _ready() -> void:
	await owner.ready
	initial_state = idle
	if initial_state == null:
		push_error("StateMachine has no initial state assigned.")
		return
 
	current_state = initial_state
	current_state.enter()
	
func _physics_process(delta: float) -> void:
	new_frame = frames
	
	owner.direction = Input.get_axis("move_letf", "move_ritgh")
	current_state.physics_update(delta)
	if not owner.is_on_floor():
		owner.velocity.y -= owner.gravity / 3
	print("Velocity: ", owner.velocity.x)
	owner.move_and_slide()
	#print(current_state)
	frame()
	#print((frames-new_frame)/delta)
	
 
func _process(delta: float) -> void:
	current_state.update(delta)

 
func transition_to(target_state_name: String) -> void:
	var target_state := get_node_or_null(target_state_name) as State
	if target_state == null:
		push_error("State '%s' not found." % target_state_name)
		return
	if target_state == current_state:
		return
 
	current_state.exit()
	current_state = target_state
	current_state.enter()
	print(current_state)
	frames = 0
	
