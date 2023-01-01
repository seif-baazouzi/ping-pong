extends KinematicBody2D

class_name Ball

export var speed = 140

var motion: Vector2 = Vector2(10, 0)
var initalPosition: Vector2

func _ready():
	randomize()
	initalPosition = position
	reset()

func _physics_process(_delta):
	if is_on_wall():
		motion.x *= -1
	
	if is_on_floor() or is_on_ceiling():
		motion.y *= -1
	
	move_and_slide(motion.normalized()*speed, Vector2.UP)

func reset():
	motion.x *= -1
	motion.y = rand_range(1, 10)
	position.x = initalPosition.x
	position.y = initalPosition.y
