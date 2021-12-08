extends ActionProcessor


func attempt_action(player_container, tier: int):
	# Todo: check if research is disabled for player
	if available_action(player_container):
		use_first_available_action(player_container)
		var research_cards = DeckManager.get_research_cards(player_container.get_research_amount(), tier)
		Server.give_research_cards(player_container.peer_id, research_cards)
