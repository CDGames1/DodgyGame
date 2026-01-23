extends Area3D

func _ready():
	pass

func _on_body_entered(body):
	if body.name == "Player":
		$AnimationPlayer.play("bounce")
		$AudioStreamPlayer.play()

func _on_animation_player_animation_finished(anim_name):
	if anim_name == "bounce":
		Global.speed_boost_activate = true
		queue_free()
