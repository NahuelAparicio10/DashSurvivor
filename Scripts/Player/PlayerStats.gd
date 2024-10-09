extends Node2D

class_name PlayerStats
var screen_size

#Stats variables
@export var speed: float = 500.0
@export var max_health: float = 100.0
var _current_health: float = 0.0

func _ready() -> void:
	_current_health = max_health;
	pass # Replace with function body.

func get_current_health() -> float:
	return _current_health;

func get_max_health() -> float:
	return max_health;

func get_speed() -> float:
	return speed;
