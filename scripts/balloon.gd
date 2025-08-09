extends Sprite2D
class_name Balloon

var ang = 0

var origin = 0
var radius = 0
var speed = 0

func _process(delta):
	ang += speed * delta
	position.x = cos(ang) * radius + origin
