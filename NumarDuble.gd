extends Label

# VARIABILA CARE MEMOREAZA NODUL PARINTE
# ESTE FOLOSITA PENTRU A EXTRAGE VARIABILELE REGASITE IN ACESTA
onready var scena = get_parent()

func _ready():
	# CONCATENARE LA TEXTUL INITIAL NUMARUL DE DUBLE
	# DIN NODUL SCENEI UTILIZAND PRINCIPIUL SINGLETON
	self.text += " " + str(DouaZaruri.nrDuble)

func _process(delta):
	# DACA FETELE ZARULUI NU SUNT NULE SI SUNT EGALE INTRE ELE
	# CRESTEM NUMARUL DE DUBLE SI OPRIM MISCAREA CONTINUA
	# PENTRU A PREVENI CRESTEREA LA INFINIT
	
	if scena.fataZar1 != 0 and scena.fataZar2 != 0:
		if scena.fataZar1 == scena.fataZar2:
			DouaZaruri.crestereDuble()
			set_process(false)
			
	# DACA EPUIZAM NUMARUL DE SANSE, STERGEM TEXTUL AFERENT
	if DouaZaruri.nrSanse == -1:
		self.text = " "
