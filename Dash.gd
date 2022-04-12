extends Node2D
const dash_delay = 0.8
onready var duration_timer = $DurationTimer
var can_dash = true
func star_dash(duration):
	duration_timer.wait_time = duration
	duration_timer.start()
func is_dashing():
	return !duration_timer.is_stopped()
	
func end_dash():
	can_dash= false
	yield(get_tree().create_timer(dash_delay),"timeout")
	can_dash = true
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_DurationTimer_timeout()->void:
	end_dash()
	pass # Replace with function body.
