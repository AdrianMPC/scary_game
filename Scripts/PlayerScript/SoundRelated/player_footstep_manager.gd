extends Node

@export var snd_stream : AudioStreamPlayer3D;

func _ready() -> void:
	snd_stream.autoplay = false;

func _get_random_sound(pack: Array) -> AudioStreamOggVorbis: 
	return null

	
	




	







func _on_movement_manager_movement_crouch(sound_pack: MatSoundPack, p_speed: float) -> void:
	pass # Replace with function body.
	



func _on_movement_manager_movement_generic(sound_pack: MatSoundPack, p_speed: float) -> void:
	pass # Replace with function body.


func _on_movement_manager_movement_jump(sound_pack: MatSoundPack, p_speed: float) -> void:
	if !sound_pack:
		return 
		
	if sound_pack is MatSoundPack:
		snd_stream.stop();
		snd_stream.stream = sound_pack.jump
		snd_stream.play();


func _on_movement_manager_movement_sprint(sound_pack: MatSoundPack, p_speed: float) -> void:
	pass # Replace with function body.


func _on_movement_manager_movement_stopped() -> void:
	snd_stream.stop();
