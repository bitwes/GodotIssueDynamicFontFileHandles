extends Node2D

var FontScene = load('res://FontScene.tscn')

func _add_nodes(how_many):
	for i in range(how_many):
		var fs  = FontScene.instance()
		fs.get_node("WithFont").get_font("font").size = i
		add_child(fs)

func _ready():
	_add_nodes(50)
