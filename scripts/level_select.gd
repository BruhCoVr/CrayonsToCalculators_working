extends Control


func _on_l_1_pressed():
	get_tree().change_scene_to_file("res://scenes/world.tscn")
	
func _on_l_2_pressed():
	get_tree().change_scene_to_file("res://scenes/level_2.tscn")

func _on_l_3_pressed():
	get_tree().change_scene_to_file("res://scenes/level_3.tscn")
	
func _on_l_4_pressed():
	get_tree().change_scene_to_file("res://scenes/level_4.tscn")
	
func _on_l_5_pressed():
	get_tree().change_scene_to_file("res://scenes/level_5.tscn")
	
func _on_back_button_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
