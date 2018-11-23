extends Node2D

# onready quandoa  cena ja estiver pronta
onready var obstaculo = preload("res://scene/obstaculos.tscn")

func _ready():
	randomize()
	pass

func criar_obstaculo():
	var clone_obsatuclo = obstaculo.instance()
	clone_obsatuclo.position = Vector2(400, rand_range(100, 560))
	add_child(clone_obsatuclo)
	pass

func _on_tempo_respown_timeout():
	criar_obstaculo()
	pass