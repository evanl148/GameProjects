extends Node2D

onready var health_progress = $YSort/karUtama/KinematicBody2D/GUI/HealthBar
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_KinematicBody2D_hero_update_health(value):
	health_progress.value = value
	pass # Replace with function body. 
