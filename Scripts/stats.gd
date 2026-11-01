extends CharacterBody3D

var gravity: float = ProjectSettings.get_setting("physics/3d/default_gravity")
var walk_speed = 10
var sprint_speed = 20
var dash_speed = 25
var dash_lenght = 10
var jump_velocity = 30
var short_hop_velocity = 20
var djump = 1
var fall_speed_ceiling = -18
var direction = 0
var firction = 1
var turned = 0
