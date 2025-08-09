extends Node


var playerOneRecord : int
var playerTwoRecord : int

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass 


func onPlayerOnePressButtonLister(isPress:bool):
	
	if(isPress):
		playerOneRecord = playerOneRecord + 1
	
	

func onPlayerTwoPressButtonLister(isPress:bool):
	
	if(isPress):
		playerTwoRecord = playerTwoRecord + 1
	
func onGameFinish():
	print("el juego ya termino")
