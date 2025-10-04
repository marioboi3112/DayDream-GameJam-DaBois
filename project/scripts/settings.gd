extends Control
func _on_volume_value_changed(value: float) -> void:
	pass
func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
