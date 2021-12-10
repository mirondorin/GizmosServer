extends Node


enum ColorType {RED, YELLOW, BLUE, BLACK}


signal removed_card(card_json)


func give_archived_card(player_container, card_json: Dictionary) -> void:
	set_card_owner(card_json, player_container.peer_id)
	FlagManager.player_archived(player_container)
	emit_signal("removed_card", card_json)
	set_card_status(card_json, get_parent().ARCHIVED_GIZMO)
	
	player_container.stats['archive'].append(card_json)


func give_active_card(player_container, card_json: Dictionary) -> void:
	
	if  card_json.has('owner_id'):
		remove_from_archive(player_container, card_json)
	else:
		set_card_owner(card_json, player_container.peer_id)

	FlagManager.player_built(player_container, card_json)
	emit_signal("removed_card", card_json)
	set_card_status(card_json, get_parent().ACTIVE_GIZMO)
	set_card_usable(card_json, true)
	
	player_container.stats['gizmos'].append(card_json)


func remove_from_archive(player_container, card_json: Dictionary) -> void:
	for card in player_container.stats['archive']:
		if card['id'] == card_json['id'] and card['tier'] == card_json['tier']:
			player_container.stats['archive'].erase(card)


func set_card_owner(card_json: Dictionary, player_id: String) -> void:
	card_json['owner_id'] = player_id


func set_card_status(card_json: Dictionary, status: int) -> void:
	card_json['status'] = status


func set_card_usable(card_json: Dictionary, usable: bool) -> void:
	card_json['usable'] = usable


func get_card_type(card_json: Dictionary) -> int:
	for type in ColorType.values():
		if card_json['cost'][type]:
			return type
	return -1
