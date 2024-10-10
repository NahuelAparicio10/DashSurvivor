extends AnimatedSprite2D
class_name PlayerAnimations

@onready var player_controller = get_parent()

func _ready() -> void:
	play()

func _process(delta: float) -> void:
	var velocity = player_controller.movement.get_velocity()
	
	if velocity.x < 0:
		flip_h = true
	else:
		flip_h = false
	
	if velocity.length() > 0:
		animation = "Walk"
	else:
		animation = "Idle"
