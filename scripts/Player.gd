class_name Player
extends Node

var myName:String 
var baseAltitude:float = 300
var speed:float = 15
var moving:bool = false

var altitude:float
var maxAltitude:float
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

var sack: PackedScene = preload("res://entities/sack.tscn")

func _ready() -> void:
	animated_sprite_2d.play("player_one")
	pass
	

func _process(delta: float) -> void:
	
	
	var thisY = self.position.y
	if(moving && thisY > maxAltitude):
		print(str(myName,": ","altitude: ",maxAltitude, "current y", thisY  ))
		var m = delta * speed
		self.position.y = self.position.y - m

func throwSack(side):
	var instance: Sack = sack.instantiate()
	instance.x_initial=getPosition().x+side
	instance.y_initial=getPosition().y
	get_parent().add_child(instance)

func  getPosition():
	return self.position
