extends KinematicBody2D

export(int) var speed = 100

var velocity: Vector2 = Vector2()

var moveUp: bool = false
var moveDown: bool = false

func _physics_process(_delta):
	getInput()
	
	if moveUp:
		velocity.y = -1
	elif moveDown:
		velocity.y = 1
	else:
		velocity.y = 0
	
	velocity = move_and_slide(velocity * speed)

func getInput():
	pass
