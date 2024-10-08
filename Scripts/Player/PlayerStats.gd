extends Node2D

#Stats variables
@export var speed: float = 50.0
@export var maxHealth: float = 100.0
var _currentHealth: float = 0.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	_currentHealth = maxHealth;
	pass # Replace with function body.

func get_current_health() -> float:
	return _currentHealth;

func get_max_health() -> float:
	return maxHealth;
