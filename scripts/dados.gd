extends Node

var all_questions = [
	"res://exercises/ex1.tscn",
	"res://exercises/ex2.tscn",
	"res://exercises/ex3.tscn",
	"res://exercises/ex4.tscn",
	"res://exercises/ex5.tscn",
	"res://exercises/ex6.tscn",
	"res://exercises/ex7.tscn",
	"res://exercises/ex8.tscn",
	"res://exercises/ex9.tscn",
	"res://exercises/ex10.tscn",
	"res://exercises/ex11.tscn",
	"res://exercises/ex12.tscn",
	"res://exercises/ex13.tscn",
	"res://exercises/ex14.tscn",
	"res://exercises/ex15.tscn"
]

var remaining_questions = []

var question = 0
var totalQuestions = 15

var estado = 1

func _ready():
	reset()

func reset():
	remaining_questions = all_questions.duplicate()
	remaining_questions.shuffle()
