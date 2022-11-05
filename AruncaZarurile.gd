extends Button

# VARIABILA CARE MEMOREAZA NODUL PARINTE

onready var scena = get_parent()

func _ready():
	# DEZACTIVARE LA INCEPUTUL SIMULARII
	
	self.disabled = true

func _process(delta):
	# IN FUNCTIE DE NUMARUL DE SANSE, MODIFICAM TEXTUL BUTONULUI
	# IAR DUPA 3 SECUNDE IL FACEM UTILIZABIL
	
	if DouaZaruri.nrSanse >= 1:
		self.text = "ARUNCA ZARURILE"
		var t = Timer.new()
		t.set_wait_time(3)
		self.add_child(t)
		t.start()
		yield(t, "timeout")
		self.disabled = false
	elif DouaZaruri.nrSanse == 0:
		self.text = "REZULTAT"
		var t = Timer.new()
		t.set_wait_time(3)
		self.add_child(t)
		t.start()
		yield(t, "timeout")
		self.disabled = false
	else: 
		# STERGERE BUTON LA AFISAREA REZULTATULUI
		
		self.queue_free()
