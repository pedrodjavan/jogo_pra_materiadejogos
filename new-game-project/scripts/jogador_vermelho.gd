extends CharacterBody2D

@onready var forca = 300 
@onready var hp = 5
@onready var prefabs_tiro = preload("res://prefabs/tiro_vermelho.tscn")

func _physics_process(delta: float) -> void:
	velocity = Input.get_vector("jogador_vermelho_esquerda","jogador_vermelho_direita","jogador_vermelho_cima","jogador_vermelho_baixo") * forca

	if Input.is_action_pressed("jogador_vermelho_atirar") and $Timer.is_stopped():
		
		print_debug("jogador vermelho atirou")
		var tiro = prefabs_tiro.instantiate()
		get_tree().get_root().add_child(tiro)
		tiro.position = Vector2(position.x - 25,position.y)
		$Timer.start()

	move_and_slide()
