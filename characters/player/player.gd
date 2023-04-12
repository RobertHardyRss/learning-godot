extends Area2D

signal hit 

# player speed in pixels / sec
@export var speed = 400
var screen_size

#func _ready():
#	hide() # hide the player until we start
#	screen_size = get_viewport_rect().size


func _process(delta):
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
#	else:
#		$AnimatedSprite2D.stop()
		
#	if velocity.x != 0:
#		$AnimatedSprite2D.animation = "walk"
#		$AnimatedSprite2D.flip_v = false
#		$AnimatedSprite2D.flip_h = velocity.x < 0
#
#	if velocity.y != 0:
#		$AnimatedSprite2D.animation = "up"
#		$AnimatedSprite2D.flip_v = velocity.y > 0
	
	
	position += velocity * delta
	
#	position.x = clamp(position.x, 0, screen_size.x)
#	position.y = clamp(position.y, 0, screen_size.y)


#func _on_body_entered(body):
#	emit_signal("hit")
#	hide() # hide the player when hit
#	$CollisionShape2D.set_deferred("disabled", true)

#func start(pos):
#	position = pos
#	$CollisionShape2D.disabled = false
#	show()
