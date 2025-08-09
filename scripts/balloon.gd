extends Sprite2D

var ang = 20
var radius = 30
var origin = 20
var speed = 3

func _process(delta):
	ang += speed * delta
	position.x = cos(ang) * radius + origin
