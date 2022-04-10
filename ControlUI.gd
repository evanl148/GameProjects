extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_UpButton_pressed():
	Input.action_press("DashMaju")


func _on_UpButton_released():
	Input.action_release("DashMaju")


func _on_DownButton_pressed():
	Input.action_press("DashMundur")


func _on_DownButton_released():
	Input.action_release("DashMundur")


func _on_LeftButton_pressed():
	Input.action_press("DashKiri")


func _on_LeftButton_released():
	Input.action_release("DashKiri")


func _on_RightButton_pressed():
	Input.action_press("Dashkanan")


func _on_RightButton_released():
	Input.action_press("Dashkanan")
