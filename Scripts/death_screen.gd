extends Control
@onready var score: Label = $score
@onready var highscore: Label = $highscore

func _ready() -> void:
	visible = false

func show_death_screen():
	score.text = "score: " + str(Global.score)
	highscore.text = "highscore: " + str(Global.highscore)
	visible = true
	get_tree().paused = true
