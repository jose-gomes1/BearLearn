extends Control

const EX_SCENE_TO_QUESTION = {
	"res://exercises/ex11.tscn": 1,
	"res://exercises/ex12.tscn": 2,
	"res://exercises/ex13.tscn": 3,
	"res://exercises/ex14.tscn": 4,
	"res://exercises/ex15.tscn": 5
}

var answers = {
	1: ["char", "character", "caractere"],
	2: ["iostream", "biblioteca iostream"],
	3: ["int i=5;", "int i =5;", "int i= 5;", "int i = 5;"],
	4: ["#include"],
	5: ["Uma classe", "classe", "class"]
}

var question = 0

func _ready():
	$CheckButton.pressed.connect(_on_CheckButton_pressed)

	var current_scene_path = get_tree().current_scene.scene_file_path
	question = EX_SCENE_TO_QUESTION.get(current_scene_path, 0)

	if question == 0:
		print("Warning: Unrecognized scene path: ", current_scene_path)

func normalize(text: String) -> String:
	return text.strip_edges().to_lower()
	
func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("enter"):
		_on_CheckButton_pressed()

func _on_CheckButton_pressed():
	var user_input = normalize($LineEdit.text)
	var valid_answers = answers.get(question, []).map(normalize)

	if user_input in valid_answers:
		Exercises._on_pressed()
	else:
		get_tree().change_scene_to_file("res://menus/game_over.tscn")
