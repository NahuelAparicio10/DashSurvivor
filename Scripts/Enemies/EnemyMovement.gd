extends Node
class_name EnemyMovement

@onready var enemy_controller = get_parent()

var _velocity : Vector2

func _ready() -> void:
	_velocity = Vector2.ZERO

func move(delta: float) -> void:
	_velocity = enemy_controller.player.position - enemy_controller.position
	_velocity = _velocity.normalized() * enemy_controller.stats.get_speed()
	enemy_controller.position += _velocity * delta

func get_velocity() -> Vector2: return _velocity
