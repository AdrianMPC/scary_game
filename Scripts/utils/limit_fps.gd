extends Node3D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ProjectSettings.set_setting("display/window/vsync_mode", 1)
	Engine.max_fps = 60;
