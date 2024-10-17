class_name StatModifier

var type : Enums.modifier_type = Enums.modifier_type.FLAT
@export var _value : float

func get_value() -> float:
	if type == Enums.modifier_type.PERCENTAGE:
		_value = clamp(_value, 0, 100)
	return _value
