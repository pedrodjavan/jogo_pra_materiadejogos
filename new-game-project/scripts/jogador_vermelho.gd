extends CharacterBody2D

@onready var forca = 500 
@onready var hp = 5

func _physics_process(delta: float) -> void:
	velocity = Input.get_vector("jogador_vermelho_esquerda","jogador_vermelho_direita","jogador_vermelho_cima","jogador_vermelho_baixo") * forca

	if Input.is_action_pressed("jogador_vermelho_atirar"):
		print_debug("jogador vermelho atirou")
	move_and_slide()
