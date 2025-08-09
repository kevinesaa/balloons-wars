extends Sprite2D

@export var pressButtonPath : String
@export var unpressButtonPath : String

var pressKeyTexture : Texture
var unpressKeyTexture : Texture

var isPress:bool = false

func _ready() -> void:
	pressKeyTexture = load(pressButtonPath)
	unpressKeyTexture = load(unpressButtonPath)

func _process(delta: float) -> void:
	if(isPress):
		texture = pressKeyTexture
	else:
		texture = unpressKeyTexture
