
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
const dash_speed = 7000
const dash_duration = 0.4
var move = Vector2(0,0)
var speed = 100
onready var anim = $Sprite
onready var dash = $Dash
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	
func _physics_process(delta):
	if (Input.is_action_just_pressed("Dashkanan")&& dash.can_dash && !dash.is_dashing()):
		dash.star_dash(dash_duration)
		move.x = dash_speed
	elif (Input.is_action_just_pressed("DashKiri")&& dash.can_dash && !dash.is_dashing()):
		dash.star_dash(dash_duration)
		move.x = -dash_speed
	elif (Input.is_action_just_pressed("DashMaju")&& dash.can_dash && !dash.is_dashing()):
		dash.star_dash(dash_duration)
		move.y = -dash_speed
	elif (Input.is_action_just_pressed("DashMundur")&& dash.can_dash && !dash.is_dashing()):
		dash.star_dash(dash_duration)
		move.y = dash_speed
	elif (Input.get_action_strength("kanan")):
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
	#var speed = dash_speed if dash.is_dashing() else speed
	
	move_and_slide(move)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
