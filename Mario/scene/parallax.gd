extends ParallaxBackground

export var velocidade = 0
var offsetx = 0
var game

func _ready():
	game = get_tree().current_scene
	pass

func _process(delta):
	if game.state == game.game_state.PLAYING:
		offsetx -= velocidade * delta
		scroll_offset = Vector2(offsetx, 0)
	pass