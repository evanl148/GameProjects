extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const dash_speed = 2000
const dash_duration = 0.2
var move = Vector2(0,0)
var speed = 50
onready var anim = $Sprite
onready var dash = $dash
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	if (Input.get_action_strength("kanan")):
		anim.animation ="kanan"
		move.x = speed
	elif (Input.get_action_strength("kiri")):
		anim.animation ="kiri"
		move.x = -speed
	elif (Input.get_action_strength("maju")):
		anim.animation ="maju"
		move.y = -speed
	elif (Input.get_action_strength("mundur")):
		anim.animation = "mundur"
		move.y = speed
	else :
		anim.animation = "diam"
		move = Vector2(0,0)
	
	
	move_and_slide(move)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
