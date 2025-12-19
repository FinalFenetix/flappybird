extends Control

@onready var play_button: TextureButton = $CenterContainer/VBoxContainer/playButton
@onready var quit_button: TextureButton = $CenterContainer/VBoxContainer/quitButton

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main.tscn")


func _on_quit_button_pressed() -> void:
	get_tree().quit()
