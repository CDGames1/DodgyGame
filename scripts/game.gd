extends Node3D

var max_coins = 7

func _ready():
	Global.coin_counter = 0

func _process(delta):
	if Global.coin_counter >= Global.highscore:
		Global.highscore = Global.coin_counter
	if Global.coin_counter == max_coins:
		get_tree().change_scene_to_file("res://scenes/You Win.tscn")
