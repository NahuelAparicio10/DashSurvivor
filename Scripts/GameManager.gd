extends Node

@export var enemies_scene: PackedScene
var score

func _ready() -> void:
	new_game()


func _process(delta: float) -> void:
	pass


func game_over() -> void:
	$ScoreTimer.stop()
	$EnemiesTimer.stop()

func new_game() -> void:
	score = 0
	$Player.start($StartPosition.position)
	$StartTimer.start()


func _on_enemies_timer_timeout() -> void:
	var enemy = enemies_scene.instantiate()
	
	#Random location in Path2D
	var enemy_spawn_location = $EnemiesPath/MobSpawnLocation
	enemy_spawn_location.progress_ratio = randf()
		
	enemy.position = enemy_spawn_location.position
	enemy.player = $Player
	
	add_child(enemy)


func _on_score_timer_timeout() -> void:
	score += 1


func _on_start_timer_timeout() -> void:
	$EnemiesTimer.start()
	$ScoreTimer.start()

 
