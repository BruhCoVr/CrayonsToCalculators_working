extends Area2D

var speed = 800
var rng = RandomNumberGenerator.new()
var color = null
@onready var crayon = $Sprite2D/AnimationPlayer

func _physics_process(delta):
	global_position.y += -speed * delta
	if(color == null):
		color = pickColor()
		
		
func pickColor():
	rng.randomize()
	var number = rng.randi_range(1,7)
	if number == 1:
		crayon.play("blue_crayon")
	elif number == 2:
		crayon.play("red_crayon")
	elif number == 3:
		crayon.play("teal_crayon")
	elif number == 4:
		crayon.play("pink_crayon")
	elif number == 5:
		crayon.play("purple_crayon")
	elif number == 6:
		crayon.play("green_crayon")	
	elif number == 7:
		crayon.play("yellow_crayon")
	return "done"
	
func _on_area_entered(area):
	if area.is_in_group("enemies"):
		area.take_damage(0.5)
		queue_free()
