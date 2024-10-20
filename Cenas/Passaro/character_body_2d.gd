extends CharacterBody2D

var gravidade : int = 1000
var forca_do_pulo : int = -300
var velocidade = Vector2()


func _ready() -> void:
	pass


func _process(delta: float) -> void:
	fisica_personagem(delta)
	movimentar_passaro()
	limitar_movimento()

func fisica_personagem(delta) -> void:
	velocity.y += gravidade * delta


func movimentar_passaro() -> void:
	if Input.is_action_just_pressed("Pulo"):
		velocity.y = forca_do_pulo
	move_and_slide()



func limitar_movimento() -> void:
	position.y = clamp(position.y, 0, 600)
