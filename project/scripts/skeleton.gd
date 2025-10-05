extends Node2D
@onready var ray_cast_right = $RayCast2DRight
@onready var ray_cast_left = $RayCast2DLeft
@onready var animated_sprite = $AnimatedSprite2D



const speed = 60
var direction = -1

func _process(delta):
	position.x += speed * direction * delta
	# handle animations for the skeleton
	if direction > 0:
		animated_sprite.flip_h = false
	else: 
		animated_sprite.flip_h = true
	# check for raycast collision
	if ray_cast_left.is_colliding():
		direction = 0
	elif ray_cast_right.is_colliding(): 
		direction = -1
		
