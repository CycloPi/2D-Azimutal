extends Node

var Creditos = preload("res://Ejecutable/Menus/Creditos/Creditos.tscn").instance()
var Jugar = preload("res://Ejecutable/Menus/Select Personaje/SelectPersonaje.tscn").instance()

func _ready():
	
	pass

func _on_Creditos_pressed():
	get_node("/root/Global Menus").add_child(Creditos)
	$".".queue_free()
	pass 

func _on_Jugar_pressed():
	get_node("/root/Global Menus").add_child(Jugar)
	$".".queue_free()
	pass 
