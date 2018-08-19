extends Node

func start():
	owner.can_move = true

func update(delta):
	if owner.dir != Vector2(0,0):
		exit()

func exit():
	owner.change_state("Move")