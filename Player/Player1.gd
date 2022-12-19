extends "res://Player/Player.gd"

func getInput():
	moveUp   = Input.is_action_pressed("player1_up")
	moveDown = Input.is_action_pressed("player1_down")
