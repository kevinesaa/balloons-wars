extends Sprite2D

@export var pressButtonPath : String
@export var unpressButtonPath : String

var pressKeyTexture : Texture
var unpressKeyTexture : Texture

var isPress:bool = false
var minDelta:float = 100
var counter:float = 0

func _ready() -> void:
	pressKeyTexture = load(pressButtonPath)
	unpressKeyTexture = load(unpressButtonPath)

func _physics_process(delta: float) -> void:
	minDelta = min(minDelta,delta)
	if(isPress || counter > 0):
		texture = pressKeyTexture
	else:
		texture = unpressKeyTexture
	counter = counter - minDelta


func onButtonPreesListener(myIsPress:bool):
	self.isPress = myIsPress
	if(myIsPress):
		counter = counter + (5 * minDelta)
