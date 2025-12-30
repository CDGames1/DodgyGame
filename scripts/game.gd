extends Node3D

var max_coins = 4

func _process(delta):
	if Global.coin_counter >= max_coins:
		get_tree().change_scene_to_file("res://scenes/You Win.tscn")
