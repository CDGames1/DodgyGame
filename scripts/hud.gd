extends Control

func _ready():
	$Counter.text = str("0") # Start at 0 when the scene loads

func _process(delta):
	$Counter.text = str(Global.coin_counter) # This will transfer from Interger into a String
