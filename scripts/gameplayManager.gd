extends Node


const baseAltitude:float = -300
const speed:float = 45


var playerOneRecord : int = 0
var playerTwoRecord : int = 0

@onready var player_one: Player = $PlayerOne
@onready var player_two: Player = $PlayerTwo
@onready var camera_2d: CameraFollow = $Camera2D

func _ready() -> void:
	pass

func onPlayerOnePressButtonLister(isPress:bool):
	
	if(isPress):
		playerOneRecord = playerOneRecord - 100
	
	

func onPlayerTwoPressButtonLister(isPress:bool):
	
	if(isPress):
		playerTwoRecord = playerTwoRecord - 100
	
func onGameFinish():
	player_one.myName ="jugador 1"
	player_one.speed = speed
	player_one.moving = true
	player_one.maxAltitude = baseAltitude + playerOneRecord
	
	player_two.myName ="jugador 2"
	player_two.speed = speed
	player_two.moving = true
	player_two.maxAltitude = baseAltitude + playerTwoRecord
	
	if(playerOneRecord < playerTwoRecord):
		camera_2d.setSetObjectToFollow(player_one) 
	else:
		camera_2d.setSetObjectToFollow(player_two)
