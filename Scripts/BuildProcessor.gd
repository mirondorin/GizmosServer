extends ActionProcessor


signal card_built(card_json)


func attempt_action(player_container, card_json: Dictionary) -> bool:
	if not valid_owner(player_container, card_json):
		return false
	
	if research_build(card_json):
		if player_can_build_card(player_container, card_json):
			build(player_container, card_json)
			return true
	elif has_free_tier_build(player_container, card_json['tier'] - 1):
		free_tier_build(player_container, card_json)
		return true
	elif available_action(player_container):
		if player_can_build_card(player_container, card_json):
			use_first_available_action(player_container)
			build(player_container, card_json)
			return true
	return false


func valid_owner(player_container, card_json: Dictionary) -> bool:
	if card_json.has('owner_id') and card_json['owner_id'] != player_container.peer_id:
		Server.send_warning_msg(player_container.peer_id, "You are not the owner of the card")
		return false
	return true


func has_free_tier_build(player_container, tier: int) -> bool:
	return player_container.free_action['build_tier'][tier] > 0


func free_tier_build(player_container, card_json: Dictionary) -> void:
	var prev_card_state = card_json['status']
	player_container.free_action['build_tier'][card_json['tier'] - 1] -= 1
	if player_container.free_action['build_tier'][card_json['tier'] - 1] <= 0:
		Server.send_action_status(player_container.peer_id, "", -1)
		Server.send_status_msg(player_container.peer_id, "")
	
	DeckManager.get_node("CardManager").give_active_card(player_container, card_json)
	Server.give_player_card(card_json, prev_card_state, player_container.peer_id)
	emit_signal("card_built", card_json)


func build(player_container, card_json: Dictionary) -> void:
	var prev_card_state = card_json['status']
	pay_card_cost(player_container, card_json)
	DeckManager.get_node("CardManager").give_active_card(player_container, card_json)
	Server.give_player_card(card_json, prev_card_state, player_container.peer_id)
	emit_signal("card_built", card_json)


func research_build(card_json: Dictionary) -> bool:
	return card_json['status'] == DeckManager.RESEARCH_GIZMO


# Returns true if player can afford card
func player_can_afford(player_container, card_json: Dictionary) -> bool:
	var energy_type = DeckManager.get_node("CardManager").get_card_type(card_json)
	var card_price = apply_discount(player_container, card_json)
	var player_energy = player_container.get_energy_type_amount(energy_type) + \
			player_container.get_excess_energy_type_amount(energy_type)
	
	return player_energy >= card_price


func player_can_build_card(player_container, card_json: Dictionary) -> bool:
	if player_can_afford(player_container, card_json):
		return true
	Server.send_warning_msg(player_container.peer_id, "You can't afford this card")
	return false


# Applies all available discounts and returns card price
func apply_discount(player_container, card_json: Dictionary) -> int:
	var card_price = get_card_price(card_json)
	
	card_price -= player_container.build_discount['tier'][card_json['tier'] - 1]
	match card_json['status']:
		DeckManager.ARCHIVED_GIZMO:
			card_price -= player_container.build_discount['archive']
		DeckManager.RESEARCH_GIZMO:
			card_price -= player_container.build_discount['research']

	return card_price if card_price > 0 else 0


# Use all excess energy available and return card price
func use_excess_energy(player_container, card_price: int, energy_type: int) -> int:
	for _el in range(player_container.stats['excess_energy'][energy_type]):
		card_price -= 1
		player_container.stats['excess_energy'][energy_type] -= 1
	return card_price if card_price > 0 else 0


# Apply discounts, use excess energy first then energy for paying the card cost
func pay_card_cost(player_container, card_json: Dictionary) -> void:
	var energy_type = DeckManager.get_node("CardManager").get_card_type(card_json)
	var card_price = apply_discount(player_container, card_json)
	card_price = use_excess_energy(player_container, card_price, energy_type)
	if card_price > 0:
		player_container.stats['energy'][energy_type] -= card_price
		EnergyManager.add_to_energy_dispenser(energy_type, card_price)


func get_card_price(card_json: Dictionary) -> int:
	var energy_type = DeckManager.get_node("CardManager").get_card_type(card_json)
	return card_json['cost'][energy_type]
