class_name Player
extends Node

var myName:String 
var baseAltitude:float = 300
var speed:float = 15
var moving:bool = false

var altitude:float
var maxAltitude:float

func _ready() -> void:
	
	pass

func _process(delta: float) -> void:
	
	var thisY = self.position.y
	if(moving && thisY > maxAltitude):
		print(str(myName,": ","altitude: ",maxAltitude, "current y", thisY  ))
		var m = delta * speed
		self.position.y = self.position.y - m
		
func  getPosition():
	return self.position
