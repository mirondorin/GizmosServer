extends Node

# Names for players in id:name format
var players = {}
var ready_players = {}
var loaded_players = {}

var player_order = []

signal game_ready
signal players_loaded


# Set status of player in lobby
func set_player_status(player_id: String, player_ready: bool) -> void:
	if player_ready:
		ready_players[player_id] = player_ready
	else:
		ready_players.erase(player_id)
	
	if is_game_ready():
		set_player_containers()
		generate_player_order()
		emit_signal("game_ready")


# Remove player from game
func remove_player(player_id: String) -> void:
	players.erase(player_id)
	ready_players.erase(player_id)


# Player finished loading assets
func set_player_loaded(player_id: String) -> void:
	loaded_players[player_id] = true
	if all_players_loaded():
		emit_signal("players_loaded")


# Creates player node
func create_player_container(player_id: String) -> void:
	var new_player_container = PlayerContainer.new()
	new_player_container.name = player_id
	new_player_container.peer_id = player_id
	add_child(new_player_container, true)


# Initialize player container for each player
func set_player_containers() -> void: 
	for id in players:
		create_player_container(id)


# If all players are ready, game should start
func is_game_ready() -> bool:
	return players.size() == ready_players.size()


# If all players loaded assets, setup game
func all_players_loaded() -> bool:
	return players.size() == loaded_players.size()


# Generate random player turn order
func generate_player_order() -> void:
	var copy_players = []
	for id in players:
		copy_players.append(id)

	while copy_players.size() > 0:
		var player_id = copy_players[randi() % copy_players.size()]
		copy_players.erase(player_id)
		player_order.append(player_id)


# Adds last active player at end of player order array
func set_next_player() -> void:
	var last_active_player = player_order.pop_front()
	player_order.push_back(last_active_player)


func get_active_player() -> String:
	return player_order[0]


func get_active_player_node():
	return get_node(get_active_player())


# Returns player container node
func get_player_container(player_id: String):
	return get_node(player_id)


func reset_player_excess_energy(player_container) -> void:
	player_container.stats['excess_energy'] = [0, 0, 0, 0]


# Reset flags, action, free actions and excess energy of player
func reset_player_status(player_id: String) -> void:
	var player_container = get_player_container(player_id)
	player_container.set_used_action(false)
	reset_player_excess_energy(player_container)
	reset_active_cards(player_container)
	FlagManager.reset_player_flags(player_container)


func reset_active_cards(player_container) -> void:
	var active_cards = player_container.stats['gizmos']
	for card in active_cards:
		card['usable'] = true


func end_turn() -> void:
	reset_player_status(get_active_player())
	set_next_player()
	Server.new_active_player()
