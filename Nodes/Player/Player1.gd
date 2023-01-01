extends "res://Nodes/Player/Player.gd"

class_name Player1

func getInput():
	moveUp   = Input.is_action_pressed("player1_up")
	moveDown = Input.is_action_pressed("player1_down")
