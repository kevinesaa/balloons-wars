extends Node2D
class_name Sack

@onready var x_initial
@onready var y_initial

func _ready():
	position.x = x_initial
	position.y = y_initial
	pass

func _physics_process(delta):
	position.y+=1
	
	if position.y > 200: 
		queue_free()#kill the bowling
