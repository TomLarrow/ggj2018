extends Node

onready var player = preload("res://Players/Player.tscn")
var orange 
var blue 


func _ready():
	orange = player.instance()
	orange.position=Vector2(200, 1080/2)
	orange.score = 0
	add_child(orange)

	blue = player.instance()
	blue.position=Vector2(1920-200, 1080/2)
	blue.score = 1
	add_child(blue)
	
func _process(delta):
	if Input.is_action_pressed("orange_input_key"):
		orange._lightweight()
	else:
		orange._return_to_normal()
	
	if Input.is_action_pressed("blue_input_key"):
		blue._lightweight()
	else:
		blue._return_to_normal()
	
	if Input.is_action_just_released("ui_cancel"):
		get_parent().end_game(0)