extends TextEdit


@export  var speed = 5

@export  var fade = false

var time = 0

var sinTime = 0

var _visable = true

func flash_text():
	if !fade:
		if sinTime > 0:
			_visable = true
		else:
			_visable = false
	else:
		_visable = true
		modulate.a = sinTime
	visible = _visable
func _physics_process(delta):
	time += delta
	sinTime = sin(speed * time)
	flash_text()
