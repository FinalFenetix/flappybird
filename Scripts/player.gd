class_name Player
extends CharacterBody2D

@export
var jumpVel : float

const gravity = 900

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("jump"):
		velocity.y = jumpVel
	
	velocity.y += gravity * delta
	move_and_slide()
