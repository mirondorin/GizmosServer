extends Node


func set_card_owner(card_json: Dictionary, player_id: int) -> void:
	card_json['owner_id'] = player_id


func set_card_status(card_json: Dictionary, status: int) -> void:
	card_json['status'] = status


func set_card_usable(card_json: Dictionary, usable: bool) -> void:
	card_json['usable'] = usable
