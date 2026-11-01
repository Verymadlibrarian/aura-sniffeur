extends State


@onready var state_machine: StateMachine = get_parent()

func enter() -> void:
	#vitesse a zero
	#changement de layer du perso
	#mise ena vant du layer du shield
	pass
 
# Called every physics frame while this state is active
func physics_update(delta: float) -> void:
	#si il lache l'input: drop le shield
	#si il saute: va en intijump
	#si il attaque: va en grab
	#si il bouge le joystick: va en dodge
	#si il se fait hit: jsp yet
	#si le shield run out: va en shieldbreak
	pass
