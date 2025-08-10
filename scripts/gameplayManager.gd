extends Node


const baseAltitude:float = 200
const winnerAltitude:float = 200
const speed:float = 45


var playerOneRecord : int = 0
var playerTwoRecord : int = 0

@onready var player_one: Player = $PlayerOne
@onready var player_two: Player = $PlayerTwo
@onready var camera_2d: CameraFollow = $Camera2D
@onready var audio_stream_player: AudioStreamPlayer = $AudioStreamPlayer

@onready var player_one_button_sound: AudioStreamPlayer = $playerOneButtonSound
@onready var player_two_button_sound: AudioStreamPlayer = $playerTwoButtonSound


func _ready() -> void:
	player_one.animated_sprite_2d.animation = "player_one"
	player_two.animated_sprite_2d.animation = "player_two"

	pass


func onTimmerGoFinish():
	audio_stream_player.play(3.6)

func onPlayerOnePressButtonLister(isPress:bool):
	
	if(isPress):
		playerOneRecord = playerOneRecord + 1
		player_one_button_sound.play()
		player_one.animated_sprite_2d.play("player_one")


func onPlayerTwoPressButtonLister(isPress:bool):
	
	if(isPress):
		playerTwoRecord = playerTwoRecord + 1
		player_two_button_sound.play()
		player_two.animated_sprite_2d.play("player_two")

	
func onGameFinish():
	
	audio_stream_player.stop()
	
	player_one.myName ="jugador 1"
	player_one.speed = speed
	player_one.moving = true
	player_one.maxAltitude = baseAltitude + playerOneRecord
	
	player_two.myName ="jugador 2"
	player_two.speed = speed
	player_two.moving = true
	player_two.maxAltitude = baseAltitude + playerTwoRecord
	
	camera_2d.setSetObjectToFollow(player_one) 
	
	if(playerOneRecord != playerTwoRecord):
		if(playerOneRecord > playerTwoRecord):
			player_one.maxAltitude = player_one.maxAltitude + winnerAltitude
			camera_2d.setSetObjectToFollow(player_one) 
		else:
			player_two.maxAltitude = player_two.maxAltitude + winnerAltitude
			camera_2d.setSetObjectToFollow(player_two)
	
	player_one.maxAltitude = (-1) * player_one.maxAltitude
	player_two.maxAltitude = (-1) * player_two.maxAltitude
