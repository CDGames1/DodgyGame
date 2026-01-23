extends Control


func _ready():
	$Menu.show()
	$SelectGamemode.hide()
	$MainMenu.play()
func _on_play_pressed():
	$BlipSelect.play()
	$Menu.hide()
	$SelectGamemode.show()


func _on_exit_pressed():
	$BlipSelect.play()
	get_tree().quit()


func _on_feedback_button_pressed():
	$BlipSelect.play()
	OS.shell_open("https://docs.google.com/forms/d/e/1FAIpQLSfXPenYMZw37f7OmePX3Ko64zVfgNfz7Gv0B-rJea38zUpSjg/viewform?usp=publish-editor")


func _on_mobile_toggled(toggled_on):
	$BlipSelect.play()
	if toggled_on == true:
		Global.mobile = true
	if toggled_on == false:
		Global.mobile = false


func _on_playCasual_pressed():
	$BlipSelect.play()
	Global.gamemode = 1
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_playEndless_pressed():
	$BlipSelect.play()
	Global.gamemode = 2
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_backfromGamemode_pressed():
	$BlipSelect.play()
	$SelectGamemode.hide()
	$Menu.show()
