extends CanvasLayer

@onready var time_label: Label = %TimeLabel
@onready var monsters_label: Label = %MonsterLabel

@export var restart_dalay: float = 5.0
var restart_cooldown: float
var time_survived: String
var monsters_defeated: int

func _ready():
	time_label.text = time_survived
	monsters_label.text = str(monsters_defeated)
	restart_cooldown = restart_dalay
	
func _process(delta):
	restart_cooldown -= delta
	if restart_cooldown <= 0.0:
		restart_game()
		
func restart_game():
	print("Restart game please")
	pass
