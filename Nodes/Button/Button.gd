extends Button

export(bool) var focus = false

onready var label: = $Label

func _ready():
	if focus:
		grab_focus()


func _on_Button_mouse_entered():
	label.rect_scale = Vector2(1.1, 1.1)
	label.rect_pivot_offset = Vector2(25, 5)


func _on_Button_mouse_exited():
	label.rect_scale = Vector2(1, 1)
	label.rect_pivot_offset = Vector2(0, 0)
