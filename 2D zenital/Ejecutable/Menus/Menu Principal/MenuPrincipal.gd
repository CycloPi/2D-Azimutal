extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass
func _on_Creditos_pressed():
	get_tree().change_scene("res://Ejecutable/Menus/Creditos/Creditos.tscn")
	pass # replace with function body


func _on_Jugar_pressed():
	get_tree().change_scene("res://Ejecutable/Menus/Select Personaje/SelectPersonaje.tscn")
	pass # replace with function body