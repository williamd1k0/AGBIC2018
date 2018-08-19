extends Node

func start():
	owner.can_move = false
	pass

func update(delta):
	yield(Tools.create_timer(1 * delta),"timeout")
	exit()

func exit():
	owner.change_state("Idle")