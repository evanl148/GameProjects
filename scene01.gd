extends Path2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#var sprite = $AnimatedSprite
onready var mons = $PathFollow2D
onready var mons1 = $PathFollow2D/AnimatedSprite
var laju = 150
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta): 
	mons1.flip_h = true
	if (mons.get_offset()>900):
		mons1.flip_h = false
	elif(mons.get_offset() >= 0):
		mons1.flip_h = true
	mons.set_offset(mons.get_offset()+laju*delta)
	
	
	
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
