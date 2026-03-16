extends Button

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("back"):
		_on_pressed()

func _on_pressed():
	var cena_atual = get_tree().current_scene.scene_file_path
	var numero = int(cena_atual.get_file().get_basename().substr(2))
	var proxima_cena = "res://explanations/exp%d.tscn" % (numero - 1)

	if ResourceLoader.exists(proxima_cena):
		get_tree().change_scene_to_file(proxima_cena)
	else:
		print("Acabaram as cenas!")
