extends Node

@onready var startGameTimer:Timer = $"../startGameTimer"
@onready var prepareGamePlayLabel: Label = $"../startGameTimer/prepareGamePlayLabel"

var goTextMaxScreenTime:float = 0.35
var goTextTime:float = 0
var timerIsReady = false
var showGoText = false
signal notifyTime(currentTime)

func _ready() -> void:
	
	pass # Replace with function body.

func _process(delta: float) -> void:
	
	showGoText = timerIsReady && startGameTimer.is_stopped()
	if ( timerIsReady && !startGameTimer.is_stopped()):
		var time =  ceil(startGameTimer.time_left) 
		prepareGamePlayLabel.text = str(time)
		notifyTime.emit (startGameTimer.time_left)
		return
	
	
	if (!showGoText || goTextTime >= goTextMaxScreenTime):
		prepareGamePlayLabel.text = ""
	else:
		prepareGamePlayLabel.text = "GO!"
		if (goTextTime < goTextMaxScreenTime):
			goTextTime = goTextTime + delta
		else:
			showGoText = false
			
		
	
	 
	
func onStartPressButton() -> void:
	startGameTimer.start()
	timerIsReady = true
