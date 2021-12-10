extends Node


enum {
	UPGRADE = 1,
	CONVERT = 2,
	ARCHIVE = 3,
	PICK = 4,
	BUILD = 5,
	RESEARCH = 6
}


func get_player_card(player_container, card_json: Dictionary):
	for card in player_container.stats['gizmos']:
		if card_json['id'] == card['id'] and card_json['tier'] == card['tier']:
			return card
	return null


func set_card_used(player_container, card_json: Dictionary):
	for card in player_container.stats['gizmos']:
		if card_json.hash() == card.hash():
			card['usable'] = false



func process_request(player_container, card_json: Dictionary) -> bool:
	var player_card = get_player_card(player_container, card_json)
	
	if player_card and card_usable(player_card) and card_condition_met(player_container, player_card):
		use_effect(player_card)
		set_card_used(player_container, player_card)
		return true
	return false


func string_to_func(func_string: String):
	var func_split = func_string.split('(')
	var func_name = func_split[0]
	var func_params = func_split[1].split(')')[0]
	func_params = str2var(func_params)
	return [func_name, func_params]


func card_usable(card_json: Dictionary) -> bool:
	return card_json['usable'] and not card_json['type_id'] == UPGRADE


# Return true if player did triggering action for card
func card_condition_met(player_container, card_json: Dictionary) -> bool:
	var condition_split = string_to_func(card_json['action'])
	var condition_met
	
	if condition_split[1]:
		condition_met = player_container.call(condition_split[0], condition_split[1])
	else:
		condition_met = player_container.call(condition_split[0])
	return condition_met


func use_effect(card_json: Dictionary):
	var effect_split = card_json['effect'].split('(')
	var effect_func = effect_split[0]
	var effect_params = effect_split[1].split(')')[0]
	
	if effect_params.is_valid_integer():
		effect_params = int(effect_params)
	else:
		effect_params = str2var(effect_params)

#			if card_json['type_id'] == CONVERT:
#				GameManager.active_player.get_node("ConvertTab").set_gizmo_preview(face)
	call(effect_func, effect_params)


func give_rand_energy(count: int):
	var active_player = Server.get_node("GameState").get_active_player_node()
	var player_energy_space = active_player.get_energy_space()
	for _el in range(count):
		var energy_type = EnergyManager.rand_from_dispenser()
		active_player.stats['energy'][energy_type] += 1
