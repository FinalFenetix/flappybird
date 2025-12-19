extends Node2D

var playing = true
var pipeScene = preload("res://Scenes/pipes.tscn")
@onready var label: Label = $Camera2D/Control/Label
@onready var quit_button: TextureButton = $Camera2D/Control/quitButton
@onready var death_screen: Control = $deathScreen

func _ready() -> void:
	Global.score = 0

func _process(delta: float) -> void:
	if label:
		label.text = str(Global.score)
	if Global.score >= Global.highscore:
		Global.highscore = Global.score

func _on_timer_timeout() -> void:
	if playing:
		var pipeInst = pipeScene.instantiate()
		add_child(pipeInst)

func _on_quit_button_pressed() -> void:
	get_tree().quit()

func died():
	death_screen.show_death_screen()


func _on_play_button_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
