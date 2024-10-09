extends Node2D

@onready var player_controller = get_parent()
var _velocity : Vector2

func _ready() -> void:
	_velocity = Vector2.ZERO

func move(delta: float) -> void:
	_velocity = Input.get_vector("left", "right", "up", "down") * player_controller.stats.get_speed()
	
	if _velocity.length() > 0:
		_velocity = _velocity.normalized() * player_controller.stats.get_speed()
		player_controller.animated_sprite.play()
	else:
		player_controller.animated_sprite.stop()
	
	player_controller.position += _velocity * delta
	#player_controller.position = position.clamp(Vector2.ZERO, player_controller.stats.screen_size)

func get_velocity() -> Vector2: return _velocity
