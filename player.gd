extends CharacterBody2D

@onready var playermaxHp = 100
@onready var currentHp = playermaxHp

func _ready() -> void:
	%healthbar.value = playermaxHp
	%healthbar.max_value = playermaxHp
	
func _physics_process(delta):
	var direction = Input.get_vector("left", "right", "up", "down")
	velocity = direction * 100
	move_and_slide()
	isTouchingenemy(delta)

func isTouchingenemy(delta) -> void:
	var overlapping_mobs = %"Hurt Box".get_overlapping_bodies()
	if overlapping_mobs.size() > 0:
		currentHp -= delta * 10
		%healthbar.value = currentHp
	
