extends Control

onready var resume := $Resume

func _process(_delta):
	if Input.is_action_just_pressed("pause"):
		resume.grab_focus()
		_on_Resume_pressed()


func _on_Resume_pressed():
	visible = not visible
	get_tree().paused = not get_tree().paused


func _on_Restart_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()


func _on_MainMenu_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://Scenes/Main/Main.tscn")
