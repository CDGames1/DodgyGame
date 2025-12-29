extends Area3D

func _ready():
	pass

func _process(delta):
	print(Global.coin_counter)
func _on_body_entered(body):
	if body.name == "Player":
		Global.coin_counter+=1
		print("Coin Collected")
