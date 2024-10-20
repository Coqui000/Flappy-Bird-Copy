extends Area2D

var velocidade_cano : float = -200




func _ready() -> void:
	pass


func _process(delta: float) -> void:
	mover_canos(delta)
	verificar_cano_saindo()

func mover_canos(delta) -> void:
	position.x += velocidade_cano * delta


func verificar_cano_saindo() -> void:
	if position.x < -500:
		queue_free()


func _on_body_entered(body: Node2D) -> void:
	get_tree().reload_current_scene()
	


func _on_pontos_body_entered(body: Node2D) -> void:
	AutoLoad.pontos +=1
