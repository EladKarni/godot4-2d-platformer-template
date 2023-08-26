class_name PlayerIdleState
extends State

@export var player : CharacterBody2D

func Phsyics_Update(delta):
	if player.velocity != Vector2.ZERO:
		if player.velocity.y > 0:
			Transitioned.emit(self, "PlayerFallingState")
		if player.velocity.y < 0:
			Transitioned.emit(self, "PlayerJumpState")
		else:
			Transitioned.emit(self, "PlayerMoveState")
