extends Node


signal removed_card(card_json)


func give_archived_card(player_container, card_json: Dictionary) -> void:
	set_card_owner(card_json, player_container.peer_id)
	FlagManager.player_archived(player_container)
	emit_signal("removed_card", card_json)
	set_card_status(card_json, get_parent().ARCHIVED_GIZMO)
	
	var card_deck_id = get_parent().get_card_deck_id(card_json['id'], card_json['tier'] - 1)
	player_container.stats['archive'].append(card_deck_id)


func give_active_card(player_container, card_json: Dictionary) -> void:
	if not card_json.has('owner_id'):
		set_card_owner(card_json, player_container.peer_id)
		emit_signal("removed_card", card_json)
		set_card_status(card_json, get_parent().ACTIVE_GIZMO)
		set_card_usable(card_json, true)
		
		var card_deck_id = get_parent().get_card_deck_id(card_json['id'], card_json['tier'] - 1)
		player_container.stats['gizmos'].append(card_deck_id)


func set_card_owner(card_json: Dictionary, player_id: String) -> void:
	card_json['owner_id'] = player_id


func set_card_status(card_json: Dictionary, status: int) -> void:
	card_json['status'] = status


func set_card_usable(card_json: Dictionary, usable: bool) -> void:
	card_json['usable'] = usable
