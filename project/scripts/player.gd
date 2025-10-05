extends CharacterBody2D
@onready var animated_sprite = $AnimatedSprite2D


const SPEED = 150.0
const JUMP_VELOCITY = -330.0


func _physics_process(delta):
	var direction = Input.get_axis("move_right", "move_left")
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idle")
		else:
			animated_sprite.play("run")
	else:
		animated_sprite.play("jump")
	
	if direction > 0:
		animated_sprite.flip_h = false
	elif direction < 0:
		
		animated_sprite.flip_h = true
	
		

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
