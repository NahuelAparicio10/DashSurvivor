extends Node
class_name EnemyStats

var _current_health : float
@export var max_health : float
@export var speed: float
@export var damage: float

func _ready() -> void:
	_current_health = max_health

#Getter for variables

func get_current_health() -> float: return _current_health
func get_max_health() -> float: return max_health
func get_damage() -> float: return damage
func get_speed() -> float: return speed
