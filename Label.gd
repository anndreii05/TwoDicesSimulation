extends Label

onready var scena = get_parent()

func _ready():
	var t = Timer.new()
	t.set_wait_time(5)
	self.add_child(t)
	t.start()
	yield(t, "timeout")
	self.text += str(scena.fataZar1)
