extends Spatial

export var fataZar1:int # FATA PRIMULUI ZAR
export var fataZar2:int # FATA CELUI DE-AL DOILEA ZAR
export var nrSanse:int # NUMARUL DE INCERCARI RAMASE
export var nrDuble:int # NUMARUL DE DUBLE OBTINUTE

# INITIALIZARE VARIABILE
func _ready():
	fataZar1 = 0
	fataZar2 = 0
	nrSanse = 6
	nrDuble = 0

# FUNCTIE PENTRU SCADEREA INCERCARILOR
func scadereSanse():
	nrSanse -= 1

# FUNCTIE PENTRU CRESTEREA DUBLELOR DACA ESTE CAZUL
func crestereDuble():
	nrDuble += 1

# REINITIALIZARE SCENA TRIDIMENSIONALA LA APASAREA BUTONULUI DE JOS
# SI SCADEREA NUMARULUI DE INCERCARI 
func _on_AruncaZarurile_pressed():
	get_tree().change_scene("res://Doua_Zaruri.tscn")
	scadereSanse()
