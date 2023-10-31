extends Area2D

var speed = 250

var hp = 1


func _physics_process(delta):
	global_position.y += speed * delta


func take_damage(damage):
	hp -= damage
	if hp <= 0:
		queue_free()
		
func _on_area_entered(area):
	if area.is_in_group("playergroup"):
		area.take_damage(1)

