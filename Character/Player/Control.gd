extends Node

func _process(delta):
	var move = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	var jump = int(Input.is_action_pressed("ui_up"))

	owner.dir = Vector2(move,jump)

	if Input.is_action_pressed("ui_attack1"):
		if owner.current_state != get_node("../State/Attack1"):
			owner.change_state("Attack1")