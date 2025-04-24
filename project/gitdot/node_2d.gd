extends Node2D

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	$RigidBody2D.apply_force(Vector2(0, rng.randf_range(-10000, -1000)))
	
func _process(delta: float) -> void:
	if abs($RigidBody2D.global_position.x) > get_viewport_rect().size.x / 2:
		$RigidBody2D.global_position.x *= -1
	
	if $RigidBody2D.global_position.y > get_viewport_rect().end.y:
		$RigidBody2D.global_position.y = 0 - get_viewport_rect().size.y / 2
