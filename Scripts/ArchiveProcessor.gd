extends ActionProcessor


func attempt_action(player_container, card_json: Dictionary) -> bool:
	# Should check if archive action is disabled
	if available_action(player_container):
		if player_container.get_archive_space() > 0 and not card_json.has('owner_id'):
			use_first_available_action(player_container)
			var prev_card_state = card_json['status']
			DeckManager.get_node("CardManager").give_archived_card(player_container, card_json)
			Server.give_player_card(card_json, prev_card_state, player_container.peer_id)
			return true
	return false
