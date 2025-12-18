extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	global_position = Vector2(150, randf_range(-20, 0))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	global_position.x -= 70 * delta
	if global_position.x < -140:
		queue_free()
