extends Node2D
class_name Line

@onready var balloon: Balloon = $"../balloon"

var x_final = 0
var y_final = 0

func _draw():
	draw_line(Vector2(balloon.position.x,balloon.position.y), Vector2(x_final, y_final), Color.BLACK, 1.0)

func _process(delta):
	queue_redraw()
