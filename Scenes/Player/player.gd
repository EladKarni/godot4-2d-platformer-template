class_name Player
extends CharacterBody2D

@onready var coyote_timer = $CoyoteTimer
@onready var jump_buffer_timer = $JumpBufferTimer
@onready var jump_trojectory_line = $JumpTrojectoryLine


@export_group("Movement")
## Maximum speed reachable by player
@export_range(0, 500) var max_speed := 200.0
## Minimum speed when variable_min_speed is set to true & min_speed isn't 0
@export_range(0, 500) var min_speed := 0.0
## Acceleration while on the ground (how quickly the player reaches max speed)
@export_range(0, 500) var acceleration := 100.0
## Friction while on group (how quickly the player slows down)
@export_range(0, 50) var friction := 50.0
## Acceleration while in the air (how quickly the player reaches max speed)
@export_range(0, 500) var air_acceleration := 5.0
## Air friction while in the air (how quickly the player slows down)
@export_range(0, 50) var air_resistance := 50.0
## Sets a variable max speed depending on how far the joystick is pushed
@export var is_variable_max_speed := false
## sets a minimum speed based on min_speed
@export var is_variable_min_speed := false

@export_group("Jump Assist")
## Max amount of time allowed after leaving the ground while still being able to jump
@export_range(0, 1) var coyote_timer_value = 0.1
## Max amount of time the game holds on to the players input to accecute when avaiable
@export_range(0, 1) var jump_buffer_timer_value = 0.15


@export_group("Jump")
## Max jump height
@export var jump_height := 100
## Amount of time it takes the player to reach the peak of their jump
@export var jump_time_to_peak := 0.4
## Amount of time it takes the player to fall from the peak of their jump to the ground
@export var jump_time_to_descent := 0.3
## Determains if a player jump highet changes depending on how long they held it in
@export var variable_jump_height := false
## Determains the minumum jump heighet a player can reach if they barely tap the jump button (and variable_jump_height is true)
@export var minimum_jump_height := -100

@export_group("Jump Trojectory")
## Maximum amount of points used to visualize player's jump trojectory (WiP)
@export var max_trojectory_ponints := 100


@onready var jump_velocity : float = (2.0 * jump_height) / jump_time_to_peak * -1
@onready var jump_gravity : float = (-2.0 * jump_height) / (jump_time_to_peak * jump_time_to_peak) * -1
@onready var fall_gravity : float = (-2.0 * jump_height) / (jump_time_to_descent * jump_time_to_descent) * -1


func _ready():
	coyote_timer.wait_time = coyote_timer_value
	jump_buffer_timer.wait_time = jump_buffer_timer_value


# Sets the gravity depending on the context
func _get_gravity(_velocity):
	return jump_gravity if _velocity.y < 0.0 else fall_gravity


# Calculates the players movement depending on the context
func _get_movement(fric: float, accel: float, delta: float):
	var direction = Input.get_axis("Move_Left", "Move_Right")

	if direction:
		velocity.x += sign(direction) * accel * delta * 100
	
	if !direction or sign(direction) != sign(velocity.x):
		velocity.x = move_toward(velocity.x, 0, fric * delta * 100)
	
	if is_variable_max_speed:
		velocity.x = clamp(velocity.x, -max_speed * abs(direction), max_speed * abs(direction))
	else:
		velocity.x = clamp(velocity.x, -max_speed, max_speed)
	
	if is_variable_min_speed and min_speed > 0:
			velocity.x = maxf(abs(velocity.x), abs(min_speed * sign(direction))) * sign(direction)


# A way to visialize the players jump trojectory in real time (WiP)
func _projected_jump_trojectory(_delta, direction):
	var max_points = max_trojectory_ponints
	
	jump_trojectory_line.clear_points()
	var pos := Vector2.ZERO
	var vel := Vector2(max_speed * direction, jump_velocity)
	for point in max_points:
		jump_trojectory_line.add_point(pos)
		vel.y += _get_gravity(vel) * _delta
		pos += vel * _delta


# Flips the player sprite depending on their movemnt direction
func _set_sprite_direction(direction: int) -> void:
	if direction > 0.0:
		$AnimatedSprite2D.flip_h = true

	if direction < 0.0:
		$AnimatedSprite2D.flip_h = false


func _physics_process(delta):
	if not is_on_floor():
		velocity.y += _get_gravity(velocity) * delta
		_get_movement(air_resistance, air_acceleration, delta)
	else:
		if coyote_timer.is_stopped():
			coyote_timer.start()
		if jump_buffer_timer.time_left > 0.0:
			jump_buffer_timer.stop()
			jump()
		_get_movement(friction, acceleration, delta)
	
	_set_sprite_direction(sign(velocity.x))
	
	if Input.is_action_just_pressed("Jump"):
		jump()
	
	if Input.is_action_just_released("Jump"):
		jump_cut()
	
	if velocity != Vector2.ZERO:
		$AnimatedSprite2D.play("walk")
	else:
		$AnimatedSprite2D.play("idle")
		
#	if Input.is_action_just_pressed("Preview_Jump"):
#		_projected_jump_trojectory(delta, sign(velocity.x))
	
	move_and_slide()


# Adds the player's jump velocity if able
func jump():
	if coyote_timer.time_left > 0.0:
		coyote_timer.stop()
		velocity.y = jump_velocity
	
	if _get_gravity(velocity) == fall_gravity:
		jump_buffer_timer.start()


# Stops jump acceleration if variable_jump_height is enabled
func jump_cut():
	if not variable_jump_height:
		return
	
	if velocity.y < minimum_jump_height * up_direction.y:
		velocity.y = minimum_jump_height * up_direction.y
