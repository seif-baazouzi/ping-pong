extends "res://Nodes/Player/Player.gd"

class_name PlayerAI

var offcet: int = 10
var ball: KinematicBody2D

func getInput():
	if not ball:
		ball = get_node("/root/Game/Ball")
	
	if ball.position.y + offcet < position.y:
		moveUp = true
		moveDown = false
	elif ball.position.y - offcet > position.y:
		moveUp = false
		moveDown = true
	else:
		moveUp = false
		moveDown = false
