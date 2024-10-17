extends Node
class_name EnemyStats

var _current_health : float
@export var max_health : BaseStat = BaseStat.new(100.0)
@export var speed : BaseStat = BaseStat.new(50.0)
@export var damage: BaseStat = BaseStat.new(5)

func _ready() -> void:
	_current_health = get_max_health()

#Getter for variables

func get_current_health() -> float: return _current_health
func get_max_health() -> float: return max_health.get_current_value()
func get_damage() -> float: return damage.get_current_value()
func get_speed() -> float: return speed.get_current_value()
