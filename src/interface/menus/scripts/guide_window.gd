extends Control

onready var button_back := get_node("VBoxContainer/Button2") as Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	button_back.connect("pressed", self, "_button_back_pressed")


func _button_back_pressed():
	get_tree().change_scene("res://src/interface/menus/main_menu.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
