extends Control


func _on_play_again_pressed():
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_main_menu_pressed():
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
