extends Node2D

#var prePuntosP2 = preload("res://Ejecutable/Juego/HUD/HUD Datos Comunes/Datos_comunes.tscn").instance()
#var PuntosP2
#var SumaVida = 100
#
#var tiempoEntra = 20
#
#var banderaVisible = false
#var VeloNum =100
#var contColor
#var posicion


var preGameOver = preload("res://Ejecutable/Menus/Win/Win.tscn").instance()
var Personaje1Muerto
#func _ready():
#	posicion = $".".get_position()


#func _process(delta):
#
#	if banderaVisible:
#		#esto pa mover el numeriko
#		PuntosP2.set_position(Vector2(PuntosP2.get_position().x , PuntosP2.get_position().y+VeloNum*delta))
#		contColor = contColor + delta
#		# esto pal máximo de color llevar cuidao
#		if contColor >= 1:
#			contColor = 1
#
#		PuntosP2.set("custom_colors/font_color",Color(0.5,0,contColor))
#
#	else:
#		contColor = delta
#
#	if OS.get_ticks_msec() - tiempoEntra  > 2000 and banderaVisible:
#		$".".queue_free()
#		print("mato potenciador 1")
#	pass


func _on_Area2D_body_entered(body):
	
	
#	porsi quieres vida
#	Global.vida += 20
#	Global.puntos += SumaVida
#	print("entra en el potenciador 1")
#	add_child(prePuntosP2)
#	tiempoEntra = OS.get_ticks_msec()
#	PuntosP2 =get_node("/root/partida/Potenciador0/Datos_comunes/Label_datos_comunes")	
#	PuntosP2.set_position(posicion)#	GraficaVida.set_text("Aquí pondré la vida actualizada")
#	PuntosP2.set_text(""+ str(SumaVida) + " puntos")
#	PuntosP2.set("custom_colors/font_color",Color(1,0,0))
#	print($".".set_position(Vector2(-300,-300)))
	# error: como solo se "esconde" puedes entrar varia veces
	# error: solucion mover fuera de la pantalla
#	$".".hide()
#	banderaVisible = true
	get_node("/root/Global Menus").add_child(preGameOver)
	$".".queue_free()
	print("no muero")
		
		#esto es una prueba pa a apagar la partida 
	get_tree().get_root() # Access via scene main loop.
	Personaje1Muerto = get_parent().queue_free()
#	Personaje1Muerto.get_parent().queue_free()
#	print(Personaje1Muerto.name)
	


	pass 
