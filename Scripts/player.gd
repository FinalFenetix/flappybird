class_name Player
extends CharacterBody2D
@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D
@export
var jumpVel : float

@export
var gravity = 900

@export
var startingVel = -250

func _ready() -> void:
	velocity.y = startingVel

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("jump"):
		velocity.y = jumpVel
	
	if velocity.y > 0:
		sprite.play("falling")
	else:
		sprite.play("jumping")
	
	velocity.y += gravity * delta
	move_and_slide()
