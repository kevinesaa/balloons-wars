extends Node

@onready var startGameTimer:Timer = $"../startGameTimer"
var timerIsReady = false
signal notifyTime(currentTime)

func _ready() -> void:
	
	pass # Replace with function body.

func _process(delta: float) -> void:
	
	if ( timerIsReady && !startGameTimer.is_stopped()):
		notifyTime.emit(startGameTimer.time_left)
		
	 
	
func onStartPressButton() -> void:
	startGameTimer.start()
	timerIsReady = true
