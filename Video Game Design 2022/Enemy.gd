extends KinematicBody2D


# Declare member variables here. Examples:
signal fire_enemy_projectile


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass


func _on_Timer_timeout():
	emit_signal("fire_enemy_projectile") 
