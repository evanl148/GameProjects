extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var animationTree = $AnimationTree
var speed = 80.0
var health_maks = 200
var health = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
signal hero_update_health(value)
func _physics_process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("kanan"):
		velocity.x += 1.0
	if Input.is_action_pressed("kiri"):
		velocity.x -= 1.0
	if Input.is_action_pressed("maju"):
		velocity.y -= 1.0
	if Input.is_action_pressed("mundur"):
		velocity.y += 1.0
	velocity = velocity.normalized()
	if velocity == Vector2.ZERO:
		animationTree.get("parameters/playback").travel("idle")
	else:
		animationTree.get("parameters/playback").travel("walk")
		animationTree.set("parameters/idle/blend_position",velocity)
		animationTree.set("parameters/walk/blend_position",velocity)
		move_and_slide(velocity*speed)
		

func terluka():
	health -= 15
	emit_signal("hero_update_health", (float(health)/float(health_maks)) * 100)
	print("Terluka")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Enemy1_input_event(viewport, event, shape_idx):
	pass # Replace with function body.
