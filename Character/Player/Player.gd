extends "res://Character/DefaultCharacter.gd"


func _physics_process(delta):
	control()

func control():
	var move = int(Input.is_action_pressed("ui_right")) -int(Input.is_action_pressed("ui_left")) 
	var jump = Input.is_action_just_pressed("ui_up")

	dir = move 

	if jump:
		change_state("Jump") 