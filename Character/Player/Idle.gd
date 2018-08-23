extends Node

func start():
	owner.move_tipe = 0
	owner.anim = "Idle"
	owner.anim_speed = 0.8

func update(delta):
	if owner.dir != Vector2(0,0) || owner.motion.y != 20 :
		exit()

func exit():
	owner.change_state("Move")