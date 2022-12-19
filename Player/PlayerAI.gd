extends "res://Player/Player.gd"

var ball: KinematicBody2D
var offcet: int = 10

func _ready():
	ball = get_node("/root/Game/Ball")

func getInput():
	if ball.position.y + offcet < position.y:
		moveUp = true
		moveDown = false
	elif ball.position.y - offcet > position.y:
		moveUp = false
		moveDown = true
	else:
		moveUp = false
		moveDown = false
