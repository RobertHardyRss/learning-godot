extends CharacterBody2D
@export var speed = 100


func _physics_process(delta):
	var velocity = Vector2.ZERO
	
	if Input.is_action_pressed("ui_left"):
		velocity.x -= 1
		
	if Input.is_action_pressed("ui_right"):
		velocity.x += 1
		
	if Input.is_action_pressed("ui_down"):
		velocity.y += 1
		
	if Input.is_action_pressed("ui_up"):
		velocity.y -= 1

	if velocity.length() > 0:
#		$AnimatedSprite2D.play()
		velocity = velocity.normalized() * speed
		
	move_and_slide()
