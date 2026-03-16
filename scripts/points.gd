extends Label

func _process(_delta):
	self.text = "Pontos: " + str(Dados.question) + " / " + str(Dados.totalQuestions)
