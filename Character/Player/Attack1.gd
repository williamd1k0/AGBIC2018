extends Node

var timer
var timer2

func start():
	Tools.remote_call("HitBox","set_dmg",10)
	owner.move_tipe = 3
	owner.anim = "Attack1"
	owner.anim_speed = 18
	timer = Tools.create_timer(.3)
	timer2 = Tools.create_timer(.4)

func update(delta):
	var wr = weakref(timer)
	var wr2 = weakref(timer2)

	if !wr.get_ref():
		
		owner.anim = "Attack2"
		owner.anim_speed = 18

	if !wr2.get_ref():
			exit()

func exit():
	owner.change_state("Idle")