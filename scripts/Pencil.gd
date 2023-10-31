extends Area2D

var speed = 800
@onready var pencil = $Sprite2D

func _physics_process(delta):
	global_position.y += -speed * delta
	
func _on_area_entered(area):
	if area.is_in_group("enemies"):
		area.take_damage(0.5)
		queue_free()
