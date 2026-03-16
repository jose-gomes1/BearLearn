extends ColorRect

func _process(_delta: float) -> void:
	if Dados.estado == 1:
		$"../bgk".color = Color.WHITE
	if Dados.estado == 2:
		$"../bgk".color = Color(0.25, 0.25, 0.25, 1)
