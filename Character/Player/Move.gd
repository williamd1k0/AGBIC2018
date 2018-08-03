extends Node

var speed = 100

func start():
	pass

func update(delta):
	owner.motion.x = owner.dir * speed
	if owner.dir == 0:
		exit()

func exit():
	owner.change_state("Idle")
	pass