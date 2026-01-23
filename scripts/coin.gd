extends Area3D

var collision_disabled = false

func _ready():
	pass

func _process(delta):
	if collision_disabled == false:
		$CollisionShape3D.disabled = false
		self.show()
func _on_body_entered(body):
	if body.name == "Player":
		$AnimationPlayer.play("bounce")
		$AudioStreamPlayer.play()

func _on_animation_player_animation_finished(anim_name):
	if anim_name == "bounce":
		self.hide()
		$CollisionShape3D.disabled = true
		collision_disabled = true
		Global.coin_counter+=1
		print("Coin Collected")
