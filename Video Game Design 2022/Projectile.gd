extends KinematicBody2D

export var bullet_speed = 2000

var velocity = Vector2.ZERO

#signal hit_kinematic
#func get_input():
	#pass

func _physics_process(delta):
	velocity.x += bullet_speed * delta
	#get_input()
# warning-ignore:unused_variable
	var impact = move_and_slide(velocity)
	
	for index in get_slide_count():
		var collision = get_slide_collision(index)
		if collision.collider is RigidBody2D or StaticBody2D:
			#print("collided with ", collision.collider.name)
			queue_free()
		elif collision.collider is KinematicBody2D:
			queue_free()
			#emit_signal("hit_kinematic")
