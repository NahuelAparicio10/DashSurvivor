class_name ItemBase #Gives a global class name

@export var _name: String 
@export var _type: Enums.item_type = Enums.item_type.UPGRADE

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass
	
func get_item_name() -> String:
	return _name;

func get_type() -> Enums.item_type:
	return _type;

func use_item() -> void:
	pass
