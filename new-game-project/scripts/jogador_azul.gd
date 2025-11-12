extends CharacterBody2D

@onready var forca = 300
@onready var hp = 5
@onready var prefabs_tiro = preload("res://prefabs/tiro_azul.tscn")

func _physics_process(delta: float) -> void:
	velocity = Input.get_vector("jogador_azul_esquerda","jogador_azul_direita","jogador_azul_cima","jogador_azul_baixo") * forca 

	if Input.is_action_pressed("jogador_azul_atirar"):
		print_debug("jogador azul atirou")
		var tiro = prefabs_tiro.instantiate()
		get_tree().get_root().add_child(tiro)
		tiro.position = Vector2(position.x + 25,position.y)
	move_and_slide()
