extends Area2D
class_name hurtbox

func _on_area_entered(area: Area2D) -> void:
	if area is killbox:
		Global.score = 0
		get_tree().reload_current_scene()
