extends Timer

@onready var gamePlayTimer: Timer = $"../startGameTimer"
var isPlaying : bool = false
signal notifyTime()

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	
	if (isPlaying && !gamePlayTimer.is_stopped()):
		notifyTime.emit(gamePlayTimer.time_left)
		
func  onInitGamePlay() -> void :
	gamePlayTimer.start()
	isPlaying = true
