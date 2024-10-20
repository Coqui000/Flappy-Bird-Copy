extends Node2D

var canos_spawnados
@onready var canos = preload("res://Cenas/Canos/area_2d.tscn")

func _ready() -> void:
	AutoLoad.pontos = 0
	
	
func _process(delta: float) -> void:
	$CanvasLayer/Control/Label.text = str(AutoLoad.pontos)
	

func _on_timer_timeout() -> void:
	canos_spawnados = canos.instantiate()
	canos_spawnados.position.x = 800
	canos_spawnados.position.y =randi_range(100, -100)
	add_child(canos_spawnados)
	$Timer.start()
	
