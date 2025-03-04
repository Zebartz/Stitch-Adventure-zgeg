extends RigidBody2D

var force = 500

func _ready():
	pass

func _physics_process(_delta):
	if Input.is_action_pressed("move_right"):
		apply_force(Vector2(force,0))
	if Input.is_action_pressed("move_left"):
		apply_force(Vector2(-force,0))
	if Input.is_action_pressed("move_up"):
		apply_force(Vector2(0,-force))
	if Input.is_action_pressed("move_down"):
		apply_force(Vector2(0,force))


func _on_maze_body_exited(_body: Node2D) -> void:
	get_tree().reload_current_scene()
