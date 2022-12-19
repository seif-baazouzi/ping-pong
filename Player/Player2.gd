extends "res://Player/Player.gd"

func getInput():
	moveUp   = Input.is_action_pressed("player2_up")
	moveDown = Input.is_action_pressed("player2_down")
