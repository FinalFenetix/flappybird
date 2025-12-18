extends Node2D

var playing = true
var pipeScene = preload("res://Scenes/pipes.tscn")
@onready var label: Label = $Camera2D/Control/Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if label:
		label.text = str(Global.score)

func _on_timer_timeout() -> void:
	if playing:
		var pipeInst = pipeScene.instantiate()
		add_child(pipeInst)
