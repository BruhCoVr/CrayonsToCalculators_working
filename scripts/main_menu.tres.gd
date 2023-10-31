extends Control

@onready var audiothing = $AudioStreamPlayer

func _physics_process(_delta):
	if Input.get_action_strength("shoot"):
		on_button_press()
	
func on_button_press():
	get_tree().change_scene_to_file("res://scenes/world.tscn")

func _on_level_select_pressed():
	get_tree().change_scene_to_file("res://scenes/level_select.tscn")
