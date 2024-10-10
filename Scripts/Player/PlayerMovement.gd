extends Node2D

@onready var player_controller = get_parent()
var _velocity : Vector2

func _ready() -> void:
	_velocity = Vector2.ZERO

func move(delta: float) -> void:
	_velocity = Input.get_vector("left", "right", "up", "down")
	_velocity = _velocity.normalized() * player_controller.stats.get_speed()
	player_controller.position += _velocity * delta

func get_velocity() -> Vector2: return _velocity
