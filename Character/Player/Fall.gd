extends Node

func start():
	owner.move_tipe = 0
	owner.anim = "Fall"
	owner.anim_speed = 0

func update(delta):
	if owner.is_on_floor():
		exit()

func exit():
	owner.change_state("Idle")