extends Node2D

var crayon = preload("res://scenes/pen.tscn")
var rng = RandomNumberGenerator.new()

#@onready var timer = $Timer
#@onready var timer_level = $Timer3
@onready var marker = $Marker2D_1
@onready var cacti = preload("res://scenes/math2.tscn")
@onready var cactii = preload("res://scenes/calc2.tscn")
@onready var cactiii = preload("res://scenes/book2.tscn")

func _ready():
	$Timer.start()
	$Timer3.start()
	
func _on_timer_timeout():
	rng.randomize()
	var number = rng.randi_range(1,10)
	print(number)
	if number == 1:
		var cactus = cacti.instantiate()
		cactus.position = $Marker2D_1.position
		$enemy.add_child(cactus)
		$math.play()
	elif number == 2:
		var cactus = cactii.instantiate()
		cactus.position = $Marker2D_2.position
		$enemy.add_child(cactus)
		$calc.play()
	elif number == 3:
		var cactus = cactiii.instantiate()
		cactus.position = $Marker2D_3.position
		$enemy.add_child(cactus)
		$book.play()
	elif number == 4:
		var cactus = cacti.instantiate()
		cactus.position = $Marker2D_4.position
		$enemy.add_child(cactus)
		$math.play()
	elif number == 5:
		var cactus = cactii.instantiate()
		cactus.position = $Marker2D_5.position
		$enemy.add_child(cactus)
		$calc.play()
	elif number == 6:
		var cactus = cactiii.instantiate()
		cactus.position = $Marker2D_6.position
		$enemy.add_child(cactus)
		$book.play()
	elif number == 7:
		var cactus = cacti.instantiate()
		cactus.position = $Marker2D_7.position
		$enemy.add_child(cactus)
		$math.play()
	elif number == 8:
		var cactus = cactii.instantiate()
		cactus.position = $Marker2D_8.position
		$enemy.add_child(cactus)
		$calc.play()
	elif number == 9:
		var cactus = cactiii.instantiate()
		cactus.position = $Marker2D_9.position
		$enemy.add_child(cactus)
		$book.play()
	elif number == 10:
		var cactus = cacti.instantiate()
		cactus.position = $Marker2D_10.position
		$enemy.add_child(cactus)
		$math.play()
	return "done"		

var counter = 0

func _e(location):
	var c = crayon.instantiate()
	c.global_position = location
	add_child(c)

func _on_player_3_spawn_pen(location):
	var c = crayon.instantiate()
	c.global_position = location
	add_child(c)

func _on_timer_3_timeout():
	get_tree().change_scene_to_file("res://scenes/transition_4.tscn")


