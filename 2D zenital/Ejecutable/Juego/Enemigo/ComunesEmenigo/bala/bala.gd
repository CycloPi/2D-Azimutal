extends KinematicBody2D

var speed = 50
var velocity = Vector2()
#Establecer el valor para rebote entre 0.5 y 1.1 y añadir limites.
var rebote = 1



func apretarGatillo(position, rotation):
	velocity = Vector2(speed, 0).rotated(rotation)

	
	

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if collision:
		queue_free()
		
#________Este codigo es para que la bala pueda rebotar__________

		velocity = (velocity.bounce(collision.normal))*Vector2(rebote,rebote)
		print("velocidad de la bala, tras la colision " + str (velocity))
		if collision.collider.has_method("hit"):
			collision.collider.hit()
			print(collision.collider.hit())


func _on_VisibilityNotifier2D_viewport_exited(viewport):
	print ("La bala sale de la viewport y desaparece")
	queue_free()
	pass # replace with function body
