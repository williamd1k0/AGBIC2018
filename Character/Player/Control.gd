extends Node

func _process(delta):
	var move = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	var jump = int(Input.is_action_pressed("ui_up"))
	var attack = Input.is_action_pressed("ui_attack1")

	owner.dir = Vector2(move,jump)

	if attack:
		owner.change_state("Attack1")