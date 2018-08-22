extends Node

func _input(event):
	var move = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	var jump = int(Input.is_action_pressed("ui_up"))

	owner.dir = Vector2(move,jump)

	var sprite = $"../Sprite"

	if owner.dir.x == 1 || owner.dir.x == -1:
		sprite.set_scale(Vector2(owner.dir.x,1))

	if Input.is_action_just_pressed("ui_attack1"):
		if owner.current_state == get_node("../State/Attack1"):
			return
		else:
			owner.change_state("Attack1")