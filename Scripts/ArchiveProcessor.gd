extends ActionProcessor


func attempt_action(player_container, card_json: Dictionary):
	# Should check if archive action is disabled
	if available_action(player_container):
		if player_container.get_archive_space() > 0 and not card_json.has('owner_id'):
			use_first_avaiable_action(player_container)
			DeckManager.get_node("CardManager").give_archived_card(player_container, card_json)
			Server.give_player_card(card_json, player_container.peer_id)
