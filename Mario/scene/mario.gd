extends RigidBody2D

var esta_vivo = 1

func _ready():
	$anm.play("correndo")
	linear_velocity = Vector2(0,0)	
	pass

func _process(delta):
	if esta_vivo:
		if linear_velocity.y == 0:
			$anm.play("correndo")
		elif linear_velocity.y < -0.1:
			$anm.play("voando")
		elif linear_velocity.y > 0.1:
			$anm.play("caindo")
	pass
	
func voar():
	linear_velocity = Vector2(0,-450)
	$som_voar.play()
	pass

func _input(event):
	if esta_vivo:
		if event.is_action_pressed("ui_botoes_mario"):
			voar()
	pass

func morrer():
	if esta_vivo:
		esta_vivo = false
		$anm.play("som_morrer")
		$som_morrer.play()
		linear_velocity = Vector2(0,-350)
	pass

