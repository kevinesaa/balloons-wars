class_name InputManager
extends Node2D

signal startGamePress()
signal playerOnePress(isPress:bool)
signal playerTwoPress(isPress:bool)

var startPress:bool = false
var gameReady:bool = false
var procesingStart:bool = false
var gameFinish:bool = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	if(!gameReady && !procesingStart):
		var inputStartPress = Input.is_action_just_pressed("start_game")
		if(inputStartPress):
			startGamePress.emit()
			procesingStart = true
			
		
	if(!gameReady):
		return
	
	if(!gameFinish):
		
		var playerOne = Input.is_action_just_pressed("player_one")
		var playerTwo = Input.is_action_just_pressed("player_two")
		
		playerOnePress.emit(playerOne)
		playerTwoPress.emit(playerTwo)


# para saber cuando esta listo para empezar el juego
func onGameTimerFinish() -> void:
	gameReady = true

# el juego termino
func onGameFinish() -> void:
	gameFinish = true
