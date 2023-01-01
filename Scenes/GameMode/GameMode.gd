extends Control

func _on_SinglePlayer_pressed():
	Globals.SinglePlayer = true
	get_tree().change_scene("res://Scenes/Game/Game.tscn")

func _on_MultipplePlayers_pressed():
	Globals.SinglePlayer = false
	get_tree().change_scene("res://Scenes/Game/Game.tscn")
