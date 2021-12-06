extends ActionProcessor


func attempt_action(player_container, card_json: Dictionary) -> bool:
	if available_action(player_container):
		if player_can_build_card(player_container, card_json):
			use_first_available_action(player_container)
			var prev_card_state = card_json['status']
			pay_card_cost(player_container, card_json)
			DeckManager.get_node("CardManager").give_active_card(player_container, card_json)
			Server.give_player_card(card_json, prev_card_state, player_container.peer_id)
			return true
	return false


func player_can_build_card(player_container, card_json: Dictionary) -> bool:
	var energy_type = DeckManager.get_node("CardManager").get_card_type(card_json)
	var card_price = get_card_price(card_json)
	var player_energy = player_container.get_energy_type_amount(energy_type)
	
	return player_energy >= card_price


# Todo: apply discount before paying price
func pay_card_cost(player_container, card_json: Dictionary):
	var energy_type = DeckManager.get_node("CardManager").get_card_type(card_json)
	var card_price = get_card_price(card_json)
	if card_price > 0:
		player_container.stats['energy'][energy_type] -= card_price
		EnergyManager.add_to_energy_dispenser(energy_type, card_price)


func get_card_price(card_json: Dictionary):
	var energy_type = DeckManager.get_node("CardManager").get_card_type(card_json)
	return card_json['cost'][energy_type]
