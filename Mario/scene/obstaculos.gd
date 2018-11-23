extends Node2D

var game
var velocidade = 150

func _ready():
	game = get_tree().current_scene
	pass

func _process(delta):
	if game.state == game.game_state.PLAYING:
		var pos_x = position.x
		pos_x -= velocidade * delta
		position.x = pos_x		
		if position.x < -100:
			queue_free()		
	pass

func _on_area_morte_body_entered(body):
	if game.state == game.game_state.PLAYING:
		if body.name == "mario":
			game.game_over()
	pass


func _on_area_score_body_entered(body):
	if game.state == game.game_state.PLAYING:
		if body.name == "mario":
			game.count_score()
	pass
