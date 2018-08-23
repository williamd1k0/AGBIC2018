extends KinematicBody2D

var dir = Vector2()
var current_state = ""
var can_jump = false
var move_tipe = 0
var UP = Vector2(0,-1)
var motion = Vector2()
var Gravity = 20
onready var sprite = $Sprite

onready var anim_player =  get_node("Sprite/Animation/AnimationPlayer")
var anim = ""
var anim_new = ""
var anim_speed = 1.0
var anim_blend = 0

export (int) var speed = 400
export (int) var jump_speed = 200

func _ready():
	change_state("Idle")

func _physics_process(delta):
	current_state.update(delta)
	motion = move_and_slide(motion,UP)
	moves()
	animation()

func moves():
	match move_tipe:
		0:
			if is_on_floor():
				can_jump = true
			if dir.x == 1 || dir.x == -1:
				sprite.set_scale(Vector2(dir.x,1))
			motion.x = dir.x * speed
			if dir.y == 1 && can_jump:
				change_state("Jump")
			motion.y += Gravity
		1:
			motion.x = dir.x * speed
			motion.y += Gravity
		2:
			if is_on_floor():
				motion.x = 0
			motion.y += Gravity
		3: 
			motion.x = 0
			motion.y = (motion.y - motion.y) + 5


func animation():
	if anim != anim_new:
		anim_new = anim
		anim_player.play(anim,anim_blend,anim_speed)

func change_state(state):
	var path = "State/" + state
	if get_node(path):
		current_state = get_node(path)
		current_state.start()
	else:
		print("invalid state")