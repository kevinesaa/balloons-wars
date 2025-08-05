extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	
	var playerOne = Input.is_action_just_pressed("player_one")
	var playerTwo = Input.is_action_just_pressed("player_two")
	if (playerOne):
		print("hola player one")
	if (playerTwo):
		print("hola player two")
