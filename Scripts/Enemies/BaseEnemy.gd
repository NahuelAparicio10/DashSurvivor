extends RigidBody2D
class_name BaseEnemy

@onready var stats = $EnemyStats
@onready var movement = $EnemyMovement
@export var player : Node2D

func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	movement.move(delta)
	


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
