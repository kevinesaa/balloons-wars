class_name BackgroundController
extends Sprite2D

var speed:float
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var m = delta * speed
	region_rect.position.y = region_rect.position.y + m
