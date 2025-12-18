extends Area2D
class_name scorebox

func _on_area_entered(area: Area2D) -> void:
	print("collding")
	if area is hurtbox:
		Global.score += 1
		queue_free()
