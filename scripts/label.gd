extends Label

func _process(_delta):
	self.text = str(Dados.question+1) + " / " + str(Dados.totalQuestions)
