extends Node3D
@onready var perso_1: CharacterBody3D = $".."

enum Staets {IDLE, WALKING, JUPMING, FALING}
var current_state: Staets = Staets.IDLE

var frame = 0

func add_frame():
	frame +=1

	pass # Replace with function body.
func change_state(state):
	current_state = state

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	add_frame()
	
	match current_state:
		Staets.IDLE:
			pass
		Staets.WALKING:
			pass
		Staets.JUPMING:
			pass
		Staets.FALING:
			pass
	
	pass
