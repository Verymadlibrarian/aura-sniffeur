extends CharacterBody3D

var gravity: float = ProjectSettings.get_setting("physics/3d/default_gravity")
var walk_speed = 10
var sprint_speed = 20
var jump_velocity = 30
var djump = 1
var fall_speed_ceiling = -18
var direction = 0
