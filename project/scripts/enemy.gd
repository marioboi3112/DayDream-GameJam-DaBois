extends RigidBody2D

@onready var player: CharacterBody2D = $"../player"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_area_2d_body_entered(body):
	if (body.name == player):
		var y_delta = position.y - body.position.y
		print(y_delta)
		
		
