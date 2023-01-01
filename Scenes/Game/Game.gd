extends Node2D

var player1ScroreValue = 0
var player2ScroreValue = 0

onready var ball: = $Ball
onready var player1Score: = $UI/Player1Score
onready var player2Score: = $UI/Player2Score
onready var goalLabel: = $UI/GoalLabel

func _ready():
	if Globals.SinglePlayer:
		$Playre2.set_script(PlayerAI)

func _on_Player1Goal_body_entered(body):
	if body is Ball:
		player2ScroreValue += 1
		player2Score.text = str(player2ScroreValue)
		resetBall()

func _on_Player2Goal_body_entered(body):
	if body is Ball:
		player1ScroreValue += 1
		player1Score.text = str(player1ScroreValue)
		resetBall()

func resetBall():
	goalLabel.visible = true
	yield(get_tree().create_timer(3), "timeout")
	ball.reset()
	goalLabel.visible = false
