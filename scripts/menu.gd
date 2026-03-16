extends Button

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("esc"):
		_pressed()

func _pressed():
	Dados.question = 0
	get_tree().change_scene_to_file("res://menus/menu.tscn")
