extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var enemy = $AnimatedSprite
onready var player = get_parent().get_parent().get_child(1).get_node("KinematicBody2D")
var speed = 80
var follow = true
var velocity = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
		var direction = get_direction(enemy,player)
		var move_direction = direction.normalized()
		if follow :
			if move_direction.x >0:
				enemy.animation = "kanan"
			elif move_direction.x<0:
				enemy.animation = "kiri"
			elif move_direction.y>0:
				enemy.animation = "mundur"
			else:
				enemy.animation	 ="maju"
			var velocity = move_direction
			move_and_slide(velocity*speed)
		else:
			enemy.animation = "diam"
			
			
		
			
func get_direction(enemy,player):
	var direction = player.global_position - enemy.global_position
	return direction
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Area2D_area_entered(area):
	if area.name =="stopFollow":
		follow = false

func _on_Area2D_area_exited(area):
	if area.name =="stopFollow":
		follow = true
	 # Replace with function body.



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
