extends Area2D


# Declare member variables here. Examples:
export (PackedScene) var Projectile

var camera_checked = false

# Called when the node enters the scene tree for the first time.
func _ready():
	#$Camera2D.align
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("fire"):
		var new_projectile = Projectile.instance()
		new_projectile.position = $Player/Position2D.global_position
		add_child(new_projectile)

func _on_Enemy_fire_enemy_projectile():
	var new_enemy_projectile = Projectile.instance()
	new_enemy_projectile.position = $Path2D/EnemyPath1/Enemy/Position2D.global_position
	new_enemy_projectile.bullet_speed = -2000
	add_child(new_enemy_projectile) 
