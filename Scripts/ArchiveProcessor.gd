extends ActionProcessor


func attempt_action(player_container, card_json: Dictionary) -> bool:
	if archive_disabled(player_container):
		return false
	if available_action(player_container):
		if player_container.get_archive_space() > 0 and not card_json.has('owner_id'):
			use_first_available_action(player_container)
			archive(player_container, card_json)
			return true
	elif research_archive(card_json):
		if player_container.get_archive_space() > 0 and not card_json.has('owner_id'):
			archive(player_container, card_json)
			return true
	return false


func archive(player_container, card_json: Dictionary):
	var prev_card_state = card_json['status']
	DeckManager.get_node("CardManager").give_archived_card(player_container, card_json)
	Server.give_player_card(card_json, prev_card_state, player_container.peer_id)


func research_archive(card_json: Dictionary) -> bool:
	return card_json['status'] == DeckManager.RESEARCH_GIZMO


func archive_disabled(player_container) -> bool:
	return player_container.disabled_actions['archive']
