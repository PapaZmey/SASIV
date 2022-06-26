extends Control

onready var button_guide := get_node("VBoxContainer/guide_button") as Button
onready var button_quit := get_node("VBoxContainer/quit_button") as Button

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	button_guide.connect("pressed", self, "_button_guide_pressed")
	button_quit.connect("pressed", self, "_button_quit_pressed")
	

func _button_guide_pressed():
	get_tree().change_scene("res://src/interface/menus/guide_window.tscn")

func _button_quit_pressed():
	get_tree().notification(MainLoop.NOTIFICATION_WM_QUIT_REQUEST)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
