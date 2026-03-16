extends Button

func _on_pressed():
	Dados.reset()
	var first_scene_path = Dados.remaining_questions.pop_front()
	get_tree().change_scene_to_file(first_scene_path)
