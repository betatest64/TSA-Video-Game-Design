extends Area2D


# Declare member variables here. Examples:
export (PackedScene) var Projectile

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("fire"):
		var new_projectile = Projectile.instance()
		new_projectile.position = $Player/Position2D.global_position
		add_child(new_projectile)
