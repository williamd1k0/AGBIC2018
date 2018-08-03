extends Node

func start():
	pass

func update(delta):
	if owner.dir != 0:
		exit()

func exit():
	owner.change_state("Move")