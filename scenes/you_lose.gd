extends Control

func _ready():
	$Counter.text = str(Global.highscore)
func _on_retry_pressed():
	$BlipSelect.play()
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_main_menu_pressed():
	$BlipSelect.play()
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
