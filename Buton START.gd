extends Button

# PORNIREA APLICATIEI IN MOMENTUL IN CARE SE APASA START PRIN FOLOSIREA SEMNALULUI pressed()
func _on_Buton_START_pressed():
	get_tree().change_scene("res://Doua_Zaruri.tscn")
	DouaZaruri.nrSanse = 6
	DouaZaruri.nrDuble = 0
