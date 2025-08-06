extends Timer

@onready var gamePlayTimer: Timer = $"../gamePlayTimer"
@onready var labelGameplayTime: Label = $"../Label"

var isPlaying : bool = false


func _ready() -> void:
	pass

func _process(delta: float) -> void:
	
	if (isPlaying && !gamePlayTimer.is_stopped()):
		var time =  ceil(gamePlayTimer.time_left) 
		labelGameplayTime.text = str(time) 
		# notifyTime.emit(gamePlayTimer.time_left)
		
func  onInitGamePlay() -> void :
	gamePlayTimer.start()
	isPlaying = true
