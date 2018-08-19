extends KinematicBody2D

var motion = Vector2()
const UP = Vector2(0,-1)
var Gravity = 20
var dir = Vector2()
var can_jump = true
var current_state = ""
var can_move = true

func _ready():
	change_state("Idle")

func _physics_process(delta):

	if !can_move && is_on_floor():
		motion.x = 0 

	motion = move_and_slide(motion,UP)
	motion.y += Gravity
	current_state.update(delta)

func change_state(state):
	var path = "State/" + state
	if get_node(path):
		current_state = get_node(path)
		current_state.start()
	else:
		print("invalid state")