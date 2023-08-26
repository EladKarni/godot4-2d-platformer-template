extends PathFollow2D

@onready var animation_player = $MovingPlatform/AnimationPlayer
@onready var moving_platform = $MovingPlatform

@export var time_to_complete_full_cycle : float


func _ready():
	animation_player.get_animation("move_platform").length = time_to_complete_full_cycle


func _physics_process(delta):
	moving_platform.global_position = global_position
