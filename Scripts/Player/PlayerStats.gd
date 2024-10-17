extends Node2D
class_name PlayerStats
var screen_size
signal OnDie

#Stats variables
@export var speed : BaseStat = BaseStat.new(50.0)
@export var max_health : BaseStat = BaseStat.new(100.0)
var _current_health: float

func _ready() -> void:
	_current_health = get_max_health();

func take_damage(value: float) -> void:
	_current_health -= value
	if _current_health <= 0:
		_current_health = 0
		OnDie.emit()

func heal(value: float) -> void:
	_current_health += value	
	if _current_health >= max_health.get_current_value():
		_current_health = max_health.get_current_value()

# Getters Variables
func get_current_health() -> float: return _current_health
func get_max_health() -> float: return max_health.get_current_value()
func get_speed() -> float:return speed.get_current_value()
