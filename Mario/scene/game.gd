extends Node2D

var score = 0
enum game_state {PLAYING, STOPED}
var state = game_state.PLAYING

func _ready():
	$hud/score.text = str(score)
	state = game_state.PLAYING
	#$musica.player()
	pass

func count_score():
	score += 1
	$hud/score.text = str(score)
	
func game_over():
	state = game_state.STOPED
	$spown_obstaculos/tempo_respown.stop()
	#$musica.stop()
	$mario.morreu()
	