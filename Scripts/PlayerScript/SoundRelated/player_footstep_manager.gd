extends Node

@export var snd_stream : AudioStreamPlayer3D;
const PITCH_LOW: float = 0.8;
const PITCH_HIGH: float = 1.2;

func _ready() -> void:
	snd_stream.autoplay = false;

func _get_random_sound(pack: Array) -> AudioStreamOggVorbis: 
	return null

func _on_movement_manager_movement_jump(sound_pack: MatSoundPack) -> void:
	if !sound_pack:
		return 
		
	if sound_pack is MatSoundPack:
		snd_stream.stop();
		snd_stream.pitch_scale = randf_range(PITCH_LOW, PITCH_HIGH)
		snd_stream.stream = sound_pack.jump
		snd_stream.play();


func _on_head_bob_movement_step(snd_pack: MatSoundPack) -> void:
	if !snd_pack:
		return 
		
	if snd_pack is MatSoundPack:
		snd_stream.pitch_scale = randf_range(PITCH_LOW, PITCH_HIGH);
		snd_stream.stream = snd_pack.walk_footsteps.pick_random();
		snd_stream.play();
