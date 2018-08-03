extends KinematicBody2D

var motion = Vector2()
const UP = Vector2(0,-1)
var Gravity = 10
var dir = 1
var can_jump = true
var current_state = ""

func _ready():
	change_state("Idle")

func _physics_process(delta):
	motion = move_and_slide(motion,UP)
	current_state.update(delta)
	motion.y += Gravity

func change_state(state):
	var path = "State/" + state
	if get_node(path):
		current_state = get_node(path)
		current_state.start()
	else:
		print("invalid state")