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
	new_player_container.name = str(player_id)
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
func generate_player_order():
	var copy_players = []
	for id in players:
		copy_players.append(id)

	while copy_players.size() > 0:
		var player_id = copy_players[randi() % copy_players.size()]
		copy_players.erase(player_id)
		player_order.append(player_id)


func get_active_player() -> String:
	return player_order[0]


func _on_DeckManager_player_received_card(player_id: String, card_deck_id: int) -> void:
	get_node(player_id).add_card(card_deck_id)
