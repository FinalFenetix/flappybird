extends AudioStreamPlayer

@export var tracks: Array[AudioStream] = []

var _last_index := -1

func _ready():
	randomize()
	finished.connect(_on_track_finished)
	play_random_track()

func play_random_track():
	if tracks.is_empty():
		return

	var index := _last_index
	while index == _last_index and tracks.size() > 1:
		index = randi() % tracks.size()

	_last_index = index
	stream = tracks[index]
	play()

func _on_track_finished():
	play_random_track()
