extends Node

var coin_counter = 0
var highscore = 0 
var mobile = false
var mobile_disabled = false
var speed_boost_activate = false
var width_mobile = 900
var gamemode = 1
# 1 = Level
# 2 = Endless

func _process(delta):
	touch_detect()

func touch_detect():
	if mobile == false:
		var touch = DisplayServer.is_touchscreen_available()
		var screen_width = DisplayServer.window_get_size().x
	
		mobile = touch and screen_width <= width_mobile
