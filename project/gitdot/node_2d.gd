extends Node2D

var rng = RandomNumberGenerator.new()

func _ready() -> void:
	$RigidBody2D.apply_force(Vector2(rng.randf_range(-100, 100), rng.randf_range(-100, -10)))
	
func _process(delta: float) -> void:
	if abs($RigidBody2D.position.x) > get_viewport_rect().size.x:
		$RigidBody2D.position.x *= -1
	
	if $RigidBody2D.position.y > get_viewport_rect().end.y:
		$RigidBody2D.global_position.y = 0 - get_viewport_rect().size.y / 2
