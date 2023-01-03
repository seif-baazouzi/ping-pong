extends Control

func _on_SinglePlayer_pressed():
	Globals.SinglePlayer = true
	get_tree().change_scene("res://Scenes/Game/Game.tscn")


func _on_MultipplePlayers_pressed():
	Globals.SinglePlayer = false
	get_tree().change_scene("res://Scenes/Game/Game.tscn")


func _on_Back_pressed():
	get_tree().change_scene("res://Scenes/Main/Main.tscn")
