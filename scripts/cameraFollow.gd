class_name CameraFollow
extends Camera2D

var objectToFollow

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	
	if (objectToFollow != null):
		position.y = objectToFollow.position.y
		
