extends Button

func _on_pressed():
	Dados.question += 1
	print("Resposta correta!")
	print("Pergunta " + str(Dados.question) + " de 15")

	if Dados.remaining_questions.size() > 0:
		var proxima_cena = Dados.remaining_questions.pop_front() #pop front é point para array
		var resultado = get_tree().change_scene_to_file(proxima_cena)
		if resultado != OK:
			print("Erro ao mudar para:", proxima_cena)
	else:
		get_tree().change_scene_to_file("res://menus/win.tscn")
		
