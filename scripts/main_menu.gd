extends Control


func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/game.tscn")


func _on_exit_pressed():
	get_tree().quit()


func _on_feedback_button_pressed():
	OS.shell_open("https://docs.google.com/forms/d/e/1FAIpQLSdYRtdwOB_SOF3znp5FWxs7WUywKiRewstvyi0eMTntJVBhLg/viewform?usp=publish-editor")


func _on_mobile_toggled(toggled_on):
	if toggled_on == true:
		Global.mobile = true
	if toggled_on == false:
		Global.mobile = false
