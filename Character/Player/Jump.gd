extends Node

func start():
	owner.motion.y = 0
	owner.move_tipe = 0
	owner.anim = "Jump"
	owner.anim_speed = 2
	owner.motion.y -= owner.jump_speed
	owner.can_jump = false

func update(delta):
	if owner.motion.y > 20:
		exit()

func exit():
	owner.change_state("Fall")