extends ActionProcessor


func attempt_action(player_container, card_json: Dictionary):
	if available_action(player_container):
		if player_can_build_card(player_container, card_json):
			use_first_avaiable_action(player_container)
			var prev_card_state = card_json['status']
			DeckManager.get_node("CardManager").give_active_card(player_container, card_json)
			Server.give_player_card(card_json, prev_card_state, player_container.peer_id)


func player_can_build_card(player_container, card_json: Dictionary) -> bool:
	var energy_type = DeckManager.get_node("CardManager").get_card_type(card_json)
	var card_price = get_card_price(card_json, energy_type)
	var player_energy = player_container.get_energy_type_amount(energy_type)
	
	return player_energy >= card_price


func get_card_price(card_json: Dictionary, energy_type: int):
	return card_json['cost'][energy_type]
