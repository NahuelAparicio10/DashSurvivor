extends Area2D

class_name  PlayerController
@onready var stats = $PlayerStats #adjust path to where PS is located in the scene tree
@onready var movement = $PlayerMovement
@onready var animated_sprite = $AnimatedSprite2D 

func _ready() -> void:
	stats.screen_size = get_viewport_rect().size


func _process(delta: float) -> void:
	movement.move(delta)
	pass
