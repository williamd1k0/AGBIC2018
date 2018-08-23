extends Node

var timer

func start():
	
	owner.move_tipe = 3
	owner.anim = "Attack2"
	owner.anim_speed = 18
	owner.anim_blend = 0
	timer = Tools.create_timer(1)

func update(delta):
	var wr = weakref(timer)
	if !wr.get_ref():
		exit()

func exit():
	owner.change_state("Idle")