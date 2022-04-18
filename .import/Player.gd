extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

export(int) var speed = 80.0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_just_pressed("kanan"):
		velocity.x += 1.0
	if Input.is_action_just_pressed("kiri"):
		velocity.x -= 1.0
	if Input.is_action_just_pressed("maju"):
		velocity.y -= 1.0
	if Input.is_action_just_pressed("mundur"):
		velocity.y += 1.0
	velocity = velocity.normalized()
	move_and_slide(velocity*speed)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
