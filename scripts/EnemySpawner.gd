extends Node2D


export (PackedScene) var enemy

var pos = Vector2(0,0)

func _ready():
	pos = position
	print(pos)

func _on_Timer_timeout():
	spawn(enemy)
	$Timer.wait_time = rand_range(5, 15)

func spawn(enemy):
	var enemy_instance = enemy.instance()

	enemy_instance.set_position(pos)
	
	get_node(".").add_child(enemy_instance)
	
