extends Node

func start():
	Tools.remote_call("HitBox","set_dmg",10)
	owner.move_tipe = 3
	owner.anim = "Attack1"
	owner.anim_speed = 8
	owner.anim_player.connect("animation_finished",self,"exit")

func update(delta):
	pass

func exit(n):
	owner.anim_player.disconnect("animation_finished",self,"exit")
	owner.change_state("Idle")