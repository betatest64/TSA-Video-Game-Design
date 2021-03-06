extends KinematicBody2D

export var run_speed = 600
export var jump_speed = -1100
export var gravity = 2500

var velocity = Vector2()


func get_input():
	velocity.x = 0
	var right = Input.is_action_pressed("move_forward")
	var left = Input.is_action_pressed("move_back")
	var jump = Input.is_action_just_pressed("jump")

	if is_on_floor() and jump:
		velocity.y = jump_speed
	if right:
		velocity.x += run_speed
	if left:
		velocity.x -= run_speed
	

func _physics_process(delta):
	velocity.y += gravity * delta
	get_input()
	velocity = move_and_slide(velocity, Vector2(0, -1))

