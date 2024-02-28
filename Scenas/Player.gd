extends CharacterBody2D

var speed = 200

func _ready():
	$AnimatedSprite2D.play()
	
func _physics_process(delta):
	velocity.x = 0
	velocity.y = 0
	
	if Input.is_action_pressed("ui_up"):
		velocity.y = velocity.y - speed
	if Input.is_action_pressed("ui_down"):
		velocity.y = velocity.y + speed	
	if Input.is_action_pressed("ui_left"):
		velocity.x = velocity.x - speed
		$AnimatedSprite2D.flip_h = false
	if Input.is_action_pressed("ui_right"):
		velocity.x = velocity.x + speed		
		$AnimatedSprite2D.flip_h = true

	move_and_slide()		
