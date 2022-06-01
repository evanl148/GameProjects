extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

const speed = 300
var velocity = Vector2()
# Called when the node enters the scene tree for the first time.
onready var fireAnim = $AnimatedSprite
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	velocity.x = speed*delta
	translate(velocity)
	fireAnim.play('fire')
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_VisibilityNotifier2D_screen_exited():
	pass # Replace with function body.
