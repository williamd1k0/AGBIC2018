extends Node

var state = ""

func start():
	owner.move_tipe = 0
	owner.anim = "Move"
	owner.anim_speed = 8

func update(delta):
	if owner.dir == Vector2(0,0) && owner.is_on_floor():
		state =  "Idle"
		exit()
	if owner.motion.y > 20:
		state =  "Fall"
		exit()

func exit():
	owner.change_state(state)