extends KinematicBody2D

onready var escenaBala = preload("res://Ejecutable/Juego/Enemigo/ComunesEmenigo/bala/bala.tscn")

onready var posPlayer1 
var posEnemigo = $".".position


func _ready():

	set_process(true)
	pass

func _process(delta):
#______________Para que el enemigo mire al player_________________
	posPlayer1 = get_parent().get_parent().get_node("PosicionSalida/personaje/Personaje").position
	look_at(Vector2(posPlayer1))
	pass


# ___________Para que el enemigo mire a donde apunta el raton_____________
#func _physics_process(delta):
#	var dir = get_global_mouse_position() - global_position
#	rotation = dir.angle()

	
#_____________Disparar cada cierto tiempo_______________
func _on_tiempo_de_disparo_timeout():
	print ("Disparo Enemigo")
	disparo()
	pass 
	
	
func disparo():
	var bala = escenaBala.instance()
	bala.apretarGatillo($PositionBala.global_position, rotation)
	get_parent().add_child(bala)
	
	
#	print(bala.name)
	print("posicion del disparo: " + str($PositionBala.position))
	print("posEnemigo: " + str(posEnemigo))
#	print($PositionBala.global_position)
	

	
	
	

