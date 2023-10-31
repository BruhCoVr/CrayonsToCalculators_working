extends Control


# Called when the node enters the scene tree for the first time.
func _physics_process(delta):
	if Input.get_action_strength("new_game"):
		on_button_press()
		
func on_button_press():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
