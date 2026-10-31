extends Area3D

@onready var deathstandring: Area3D = $"."
@onready var blastzone: Area3D = $"../../Blastzone"
@onready var spawn_piont: Node3D = $"../../SpawnPiont"
@onready var perso_1: CharacterBody3D = $".."


var isAlive = true


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if blastzone in deathstandring.get_overlapping_areas():
		isAlive = true
	else:
		isAlive = false
	
	if not isAlive:
		perso_1.set_position(spawn_piont.get_position())
		print(self.get_position())
		
	
	pass
