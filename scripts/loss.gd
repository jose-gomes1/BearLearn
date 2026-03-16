extends Button

func _pressed():
	get_tree().change_scene_to_file("res://menus/game_over.tscn")
