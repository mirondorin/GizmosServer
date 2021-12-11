extends ActionProcessor


func attempt_action(player_container, tier: int):
	if not research_disabled(player_container) and available_action(player_container):
		use_first_available_action(player_container)
		var research_cards = DeckManager.get_research_cards(player_container.get_research_amount(), tier)
		Server.give_research_cards(player_container.peer_id, research_cards)


func research_disabled(player_container) -> bool:
	return player_container.disabled_actions['research']
