extends Node


var playerOneRecord : int
var playerTwoRecord : int

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass 


func onPlayerOnePressButtonLister():
	playerOneRecord = playerOneRecord + 1
	print(str("player one: ", playerOneRecord))
	

func onPlayerTwoPressButtonLister():
	playerTwoRecord = playerTwoRecord + 1
	print(str("player two: ", playerTwoRecord))
