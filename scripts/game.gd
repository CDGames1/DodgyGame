extends Node3D

var max_coins = 7

func _ready():
	$GameplayMusic.play()
	Global.coin_counter = 0
	if Global.gamemode == 1:
		$Level.show()
		$Endless.queue_free()
	if Global.gamemode == 2:
		$Endless.show()
		$Level.queue_free()
		

var wave2_started = false
var wave3_started = false
var wave4_started = false
var wave5_started = false
var wave6_started = false
var wave7_started = false
var wave8_started = false
var wave9_started = false
var wave10_started = false
var wave11_started = false
var wave12_started = false

func _process(delta):
	if Global.coin_counter >= Global.highscore:
		Global.highscore = Global.coin_counter
	if Global.gamemode == 1:
		if Global.coin_counter == max_coins:
			get_tree().change_scene_to_file("res://scenes/You Win.tscn")
	if Global.gamemode == 2:
		if Global.coin_counter >= 7 and not wave2_started:
			$Endless/Coin/AnimationPlayer.play("Wave2Start")
			$Endless/Coin/AnimationPlayer.active = true
			wave2_started = true
		if Global.coin_counter >= 14 and not wave3_started:
			$Endless/Coin/AnimationPlayer.play("Wave3Start")
			$Endless/Coin/AnimationPlayer.active = true
			wave3_started = true
		if Global.coin_counter >= 21  and not wave3_started:
			$Endless/Coin/AnimationPlayer.play("Wave4Start")
			$Endless/Coin/AnimationPlayer.active = true
			wave4_started = true
		if Global.coin_counter >= 28 and not wave4_started:
			$Endless/Coin/AnimationPlayer.play("Wave5Start")
			$Endless/Coin/AnimationPlayer.active = true
			wave5_started = true
		if Global.coin_counter >= 35 and not wave5_started:
			$Endless/Coin/AnimationPlayer.play("Wave6Start")
			$Endless/Coin/AnimationPlayer.active = true
			wave6_started = true
		if Global.coin_counter >= 42 and not wave6_started:
			$Endless/Coin/Wave1.show()
			$Endless/Coin/Wave1/Coin.collision_disabled = false
			$Endless/Coin/Wave1/Coin5.collision_disabled = false
			$Endless/Coin/Wave1/Coin2.collision_disabled = false
			$Endless/Coin/Wave1/Coin6.collision_disabled = false
			$Endless/Coin/Wave1/Coin7.collision_disabled = false
			$Endless/Coin/Wave1/Coin3.collision_disabled = false
			$Endless/Coin/Wave1/Coin4.collision_disabled = false
			wave6_started = true
		if Global.coin_counter >= 49 and not wave7_started:
			$Endless/Coin/Wave1.show()
			$Endless/Coin/Wave1/Coin.collision_disabled = false
			$Endless/Coin/Wave1/Coin5.collision_disabled = false
			$Endless/Coin/Wave1/Coin2.collision_disabled = false
			$Endless/Coin/Wave1/Coin6.collision_disabled = false
			$Endless/Coin/Wave1/Coin7.collision_disabled = false
			$Endless/Coin/Wave1/Coin3.collision_disabled = false
			$Endless/Coin/Wave1/Coin4.collision_disabled = false
			wave7_started = true
		if Global.coin_counter >= 56 and not wave8_started:
			$Endless/Coin/Wave1.show()
			$Endless/Coin/Wave1/Coin.collision_disabled = false
			$Endless/Coin/Wave1/Coin5.collision_disabled = false
			$Endless/Coin/Wave1/Coin2.collision_disabled = false
			$Endless/Coin/Wave1/Coin6.collision_disabled = false
			$Endless/Coin/Wave1/Coin7.collision_disabled = false
			$Endless/Coin/Wave1/Coin3.collision_disabled = false
			$Endless/Coin/Wave1/Coin4.collision_disabled = false
			wave8_started = true
		if Global.coin_counter >= 63 and not wave9_started:
			$Endless/Coin/Wave1.show()
			$Endless/Coin/Wave1/Coin.collision_disabled = false
			$Endless/Coin/Wave1/Coin5.collision_disabled = false
			$Endless/Coin/Wave1/Coin2.collision_disabled = false
			$Endless/Coin/Wave1/Coin6.collision_disabled = false
			$Endless/Coin/Wave1/Coin7.collision_disabled = false
			$Endless/Coin/Wave1/Coin3.collision_disabled = false
			$Endless/Coin/Wave1/Coin4.collision_disabled = false
			wave9_started = true
		if Global.coin_counter >= 70 and not wave10_started:
			$Endless/Coin/Wave1.show()
			$Endless/Coin/Wave1/Coin.collision_disabled = false
			$Endless/Coin/Wave1/Coin5.collision_disabled = false
			$Endless/Coin/Wave1/Coin2.collision_disabled = false
			$Endless/Coin/Wave1/Coin6.collision_disabled = false
			$Endless/Coin/Wave1/Coin7.collision_disabled = false
			$Endless/Coin/Wave1/Coin3.collision_disabled = false
			$Endless/Coin/Wave1/Coin4.collision_disabled = false
			wave10_started = true
		if Global.coin_counter >= 77 and not wave11_started:
			$Endless/Coin/Wave1.show()
			$Endless/Coin/Wave1/Coin.collision_disabled = false
			$Endless/Coin/Wave1/Coin5.collision_disabled = false
			$Endless/Coin/Wave1/Coin2.collision_disabled = false
			$Endless/Coin/Wave1/Coin6.collision_disabled = false
			$Endless/Coin/Wave1/Coin7.collision_disabled = false
			$Endless/Coin/Wave1/Coin3.collision_disabled = false
			$Endless/Coin/Wave1/Coin4.collision_disabled = false
			wave11_started = true
		if Global.coin_counter >= 84 and not wave12_started:
			$Endless/Coin/Wave1.show()
			$Endless/Coin/Wave1/Coin.collision_disabled = false
			$Endless/Coin/Wave1/Coin5.collision_disabled = false
			$Endless/Coin/Wave1/Coin2.collision_disabled = false
			$Endless/Coin/Wave1/Coin6.collision_disabled = false
			$Endless/Coin/Wave1/Coin7.collision_disabled = false
			$Endless/Coin/Wave1/Coin3.collision_disabled = false
			$Endless/Coin/Wave1/Coin4.collision_disabled = false
			wave11_started = true
