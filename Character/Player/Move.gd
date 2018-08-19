extends Node

func start():
	pass

func update(delta):
	owner.motion.x = owner.dir.x * owner.speed
	
	if owner.is_on_floor():
		owner.motion.y = -owner.jump_speed * owner.dir.y

	if owner.motion == Vector2(0,0):
		exit()

func exit():
	owner.change_state("Idle")