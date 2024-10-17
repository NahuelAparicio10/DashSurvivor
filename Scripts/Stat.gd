extends Resource
class_name BaseStat

@export var base_value : float
var _current_value : float
var modifiers : Array = []

func _init(v : float = 0.0) -> void:
	base_value = v
	_current_value = base_value

func add_modifier(modifier: StatModifier) -> void:
	modifiers.append(modifier)
	recalculate_value()

func remove_modifier(modifier: StatModifier) -> void:
	modifier.erase(modifier)
	recalculate_value()

func recalculate_value() -> void:
	var total_flat : float = 0.0
	var total_percentage : float = 0.0
	
	for modifier in modifiers:
		if modifier.type == Enums.modifier_type.FLAT:
			total_flat += modifier.get_value()
		else:
			total_percentage += modifier.get_value()
	_current_value = base_value + total_flat
	_current_value *= (1 + total_percentage / 100.0)

func get_current_value() -> float: return _current_value
func get_base_value() -> float: return base_value
