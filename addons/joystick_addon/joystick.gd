extends Node2D

@onready var touch:TouchScreenButton = %TouchBtn
@onready var init_pos:Marker2D = %InitPos
@export var up_input:String = "move_up"
@export var down_input:String = "move_down"
@export var left_input:String = "move_left"
@export var right_input:String = "move_right"
var radius = 40

func _draw() -> void:
	var center = Vector2(0, 0)
	var draw_radius = 100
	var start_angle = 0.0
	var end_angle = TAU
	var color = Color.POWDER_BLUE
	var width = 20
	draw_arc(center, draw_radius, start_angle, end_angle, 120, color, width, true)
	draw_circle(touch.position, 60, Color.SKY_BLUE)
	draw_arc(touch.position, 60, start_angle, end_angle, 120, Color.STEEL_BLUE, width, true)

func _input(event):
	if Global.mobile_disabled == false:
		if event is InputEventScreenTouch:
			if event.pressed:
				_process_touch(event.position)
			else:
				reset_dir()
				touch.global_position = init_pos.global_position
				queue_redraw()
		elif event is InputEventScreenDrag:
			_process_touch(event.position)

func _process_touch(touch_pos: Vector2):
	queue_redraw()
	var centre = init_pos.global_position
	var distance = centre.distance_to(touch_pos)
	var dir = touch_pos - centre
	if distance > radius:
		touch_pos = centre + dir.normalized() * radius
	touch.global_position = touch_pos

	if touch.global_position != init_pos.global_position:
		var angle = (touch_pos - centre).angle()
		reset_dir()
		if angle >= -0.5 and angle <= 0.5:
			Input.action_press(right_input)
		elif angle > 0.5 and angle <= 1.0:
			Input.action_press(down_input)
			Input.action_press(right_input)
		elif angle > 1.0 and angle <= 2.1:
			Input.action_press(down_input)
		elif angle > 2.1 and angle <= 2.7:
			Input.action_press(down_input)
			Input.action_press(left_input)
		elif angle > 2.7 and angle <= 3.2:
			Input.action_press(left_input)
		elif angle >= -3.2 and angle <= -2.7:
			Input.action_press(left_input)
		elif angle > -2.7 and angle <= -2.1:
			Input.action_press(up_input)
			Input.action_press(left_input)
		elif angle > -2.1 and angle <= -1.0:
			Input.action_press(up_input)
		elif angle > -1.0 and angle < -0.5:
			Input.action_press(up_input)
			Input.action_press(right_input)

func reset_dir():
	Input.action_release(up_input)
	Input.action_release(down_input)
	Input.action_release(left_input)
	Input.action_release(right_input)
