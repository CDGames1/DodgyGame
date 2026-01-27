extends Control


func _ready():
	pass


func _process(delta):
	if self.visible == true:
		loading_stage()

func loading_stage():
	const preloadgame = preload("res://scenes/game.tscn")
	await get_tree().create_timer(2.0).timeout
	get_tree().change_scene_to_packed(preloadgame)
