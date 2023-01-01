extends "res://Nodes/Player/Player.gd"

class_name Player2

func getInput():
	moveUp   = Input.is_action_pressed("player2_up")
	moveDown = Input.is_action_pressed("player2_down")
