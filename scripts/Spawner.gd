extends Node2D

var preloadedEnemies = [ 
	preload("res://scenes/enemy.tscn"),
	preload("res://scenes/fast_enemy.tscn")]
	
@onready var spawnTimer = $SpawnTimer
var nextSpawnTime = 5.0

func _ready():
	randomize()
	spawnTimer.start(nextSpawnTime)
	

func _on_spawn_timer_timeout():
	
	var enemyPreload = preloadedEnemies[randi() % preloadedEnemies.size()]
	var enemy = enemyPreload.instantiate()
	enemy.positon = Vector2(0, position.y)
	get_tree().current.scene 
	
	
	
	spawnTimer.start(nextSpawnTime)
