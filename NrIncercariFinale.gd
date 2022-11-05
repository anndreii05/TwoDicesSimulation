extends Label

func _process(delta):
	# DACA NUMARUL DE SANSE ESTE UN NUMAR NEGATIV, AFISAM NUMARUL DE DUBLE
	# SI TRECEM LA INTERFATA PRINCIPALA DUPA 6 SECUNDE
	
	if DouaZaruri.nrSanse < 0:
		self.text += "Numarul de duble obtinut din 6 incercari este de " + str(DouaZaruri.nrDuble)
		self.text += "\nIn scurt timp vei fi redirectionat catre interfata principala!" 
		set_process(false)
		var t = Timer.new()
		t.set_wait_time(6)
		self.add_child(t)
		t.start()
		yield(t, "timeout")
		get_tree().change_scene("res://Interfata_Principala.tscn")
