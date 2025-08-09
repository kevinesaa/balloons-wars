extends Node2D

var helium_balloon: PackedScene = preload("res://entities/helium_balloon.tscn")

func _ready():
	create_balloons(-35, 35)#left group
	

func create_balloons(from,to):
	for i in 30:
		var instance: HeliumBalloon = helium_balloon.instantiate()
		add_child(instance)
		
		var balloon = instance.balloon
		balloon.origin = randi_range(from,to)
		balloon.position.x = randi_range(30,100)
		balloon.position.y = randi_range(-70,-100)
		balloon.speed = 1
		balloon.ang =randi_range(-1,1) 
		balloon.radius = randi_range(5,15)
		
		var line = instance.line
		line.x_final = (from + to) / 2
		line.y_final = 20
