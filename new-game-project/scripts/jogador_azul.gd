extends CharacterBody2D

@onready var forca = 500 
@onready var hp = 5

func _physics_process(delta: float) -> void:
	velocity = Input.get_vector("jogador_azul_esquerda","jogador_azul_direita","jogador_azul_cima","jogador_azul_baixo") * forca 

	if Input.is_action_pressed("jogador_azul_atirar"):
		print_debug("jogador azul atirou")
	move_and_slide()
