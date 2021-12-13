extends Node


enum {
	UPGRADE_CARD = 1,
	CONVERT_CARD = 2,
	ARCHIVE_CARD = 3,
	PICK_CARD = 4,
	BUILD_CARD = 5,
	RESEARCH_CARD = 6
}


func process_request(player_container, card_json: Dictionary) -> bool:
	var player_card = get_player_card(player_container, card_json)
	
	if player_card and card_usable(player_card) and card_condition_met(player_container, player_card):
		use_effect(player_card)
		set_card_used(player_container, player_card)
		Server.player_card_disabled(player_card, player_container.peer_id)
		return true
	return false


func get_player_card(player_container, card_json: Dictionary):
	for card in player_container.stats['gizmos']:
		if card_json['id'] == card['id'] and card_json['tier'] == card['tier']:
			return card
	return null


func set_card_used(player_container, card_json: Dictionary) -> void:
	for card in player_container.stats['gizmos']:
		if card_json.hash() == card.hash():
			card['usable'] = false


func string_to_func(func_string: String):
	var func_split = func_string.split('(')
	var func_name = func_split[0]
	var func_params = func_split[1].split(')')[0]
	func_params = str2var(func_params)
	return [func_name, func_params]


func card_usable(card_json: Dictionary) -> bool:
	return card_json['usable'] and not card_json['type_id'] == UPGRADE_CARD


# Return true if player did triggering action for card
func card_condition_met(player_container, card_json: Dictionary) -> bool:
	var condition_split = string_to_func(card_json['action'])
	var condition_met
	
	if condition_split[1]:
		condition_met = player_container.call(condition_split[0], condition_split[1])
	else:
		condition_met = player_container.call(condition_split[0])
	return condition_met


func passive_card(card_json: Dictionary):
	return card_json['type_id'] == UPGRADE_CARD


func use_effect(card_json: Dictionary) -> void:
	var effect_split = card_json['effect'].split('(')
	var effect_func = effect_split[0]
	var effect_params = effect_split[1].split(')')[0]
	
	if effect_params.is_valid_integer():
		effect_params = int(effect_params)
	else:
		effect_params = str2var(effect_params)

	if card_json['type_id'] == CONVERT_CARD:
		Server.give_converter_card(Server.get_node("GameState").get_active_player(), card_json)

	call(effect_func, effect_params)


func give_rand_energy(count: int) -> void:
	var active_player = Server.get_node("GameState").get_active_player_node()
	var player_energy_space = active_player.get_energy_space()
	count = count if count < player_energy_space else player_energy_space
	
	for _el in range(count):
		var energy_type = EnergyManager.rand_from_dispenser()
		active_player.stats['energy'][energy_type] += 1


# params[0] is action_id. Must be in range {ARCHIVE, PICK, BUILD, RESEARCH}
# params[1] is the amount of free actions player will get
#func add_free_action(params: Array):
#	var active_player = Server.get_node("GameState").get_active_player_node()
#	var action = get_parent().get_action_string(params[0])
#	active_player.free_action[action] += params[1]

#	current_state = action
#	var format_string = "%s has %d free %s"
#	var status = format_string % [active_player.name, params[1], action]
#	game.get_node("ActionStatus").text = status
#	hint_manager.action_highlight(action)


# Gives count vp_tokens to active_player
func give_vp_tokens(count: int) -> void:
	var active_player = Server.get_node("GameState").get_active_player_node()
	active_player.stats['vp_tokens'] += count


# params HAS TO BE format of [[converting], [result], [amount]]
# Sends convert tab to active player
func convert_tab(convert_arr: Array) -> void:
	var active_player = Server.get_node("GameState").get_active_player_node()
	Server.give_converter_tab(active_player.peer_id, convert_arr)


# Checks if player has initial type of energy
# Give player excess_energy of type result if he does
func convert_energy(initial: int, result: int, amount: int):
	var active_player = Server.get_node("GameState").get_active_player_node()
	
	if active_player.stats['excess_energy'][initial] > 0:
		active_player.stats['excess_energy'][initial] -= 1
		active_player.stats['excess_energy'][result] += amount
		Server.player_stats_updated(active_player.peer_id, active_player.stats)
	elif active_player.stats['energy'][initial] > 0:
		active_player.stats['energy'][initial] -= 1
		active_player.stats['excess_energy'][result] += amount
		Server.player_stats_updated(active_player.peer_id, active_player.stats)
	else:
		print(active_player.name + " does not have required energy type")


func upgrade_capacities(params: Array) -> void:
	var active_player = Server.get_node("GameState").get_active_player_node()
	active_player.stats['max_energy'] += params[0]
	active_player.stats['max_archive'] += params[1]
	active_player.stats['max_research'] += params[2]


# Permanently reduces cost of building gizmos from the archive zone by amount
func reduce_archive_build(amount: int) -> void:
	var active_player = Server.get_node("GameState").get_active_player_node()
	active_player.build_discount['archive'] += amount


# Permanently reduces cost of building gizmos from the research zone by amount
func reduce_research_build(amount: int) -> void:
	var active_player = Server.get_node("GameState").get_active_player_node()
	active_player.build_discount['research'] += amount


# Permanently reduces cost of building specific tier gizmos by amount
# params[0] - tier, params[1] - amount
# 0 index based so if params[0] = 1, tier is actually 2
func reduce_tier_build(params: Array) -> void:
	var active_player = Server.get_node("GameState").get_active_player_node()
	active_player.build_discount['tier'][params[0]] += params[1]


# Permanently disable action with action_id for player
func disable_action(action_id: int) -> void:
	var active_player = Server.get_node("GameState").get_active_player_node()
	var action = get_parent().get_action_string(action_id)
	active_player.disabled_actions[action] = true


func _on_BuildProcessor_card_built(card_json: Dictionary):
	if passive_card(card_json):
		use_effect(card_json)
