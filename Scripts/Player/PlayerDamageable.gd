extends Area2D

signal OnHit

func _ready() -> void:
	pass # Replace with function body.


func _process(delta: float) -> void:
	pass

func _on_body_entered(body):
	hide()
	OnHit.emit()
	#$CollisionShape2D.set_deferred("disable", true)
