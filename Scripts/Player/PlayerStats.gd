extends Node2D
class_name PlayerStats
var screen_size
signal OnDie

#Stats variables
@export var speed: float = 100.0
@export var max_health: float = 100.0
var _current_health: float = 0.0

func _ready() -> void:
	_current_health = max_health;

func take_damage(value: float) -> void:
	_current_health -= value
	if _current_health <= 0:
		_current_health = 0
		OnDie.emit()

func heal(value: float) -> void:
	_current_health += value
	
	if _current_health >= max_health:
		_current_health = max_health

# Getters Variables
func get_current_health() -> float:
	return _current_health;

func get_max_health() -> float:
	return max_health;

func get_speed() -> float:
	return speed;
