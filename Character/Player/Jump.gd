extends Node

var timer

func start():
	owner.move_tipe = 0
	owner.anim = "Jump"
	owner.anim_speed = 2
	owner.can_jump = false
	owner.motion.y -= owner.jump_speed

func update(delta):
	if owner.motion.y > 0:
		exit()

func exit():
	owner.change_state("Fall")