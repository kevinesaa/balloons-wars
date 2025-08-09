class_name CameraFollow
extends Camera2D

var objectToFollow
var myOffset:float

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	
	if (objectToFollow != null):
		position.y = objectToFollow.position.y +  myOffset
		
func setSetObjectToFollow(objectToFollw:Player):
	var objectPosition = objectToFollw.getPosition()
	self.myOffset = self.position.y - objectPosition.y
	self.objectToFollow = objectToFollw
