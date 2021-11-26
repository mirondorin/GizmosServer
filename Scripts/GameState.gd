extends Node

# Names for players in id:name format
var players = {}
var ready_players = {}
var loaded_players = {}


signal game_ready
signal players_loaded


# Set status of player in lobby
func set_player_status(player_id: int, player_ready: bool) -> void:
	if player_ready:
		ready_players[player_id] = player_ready
	else:
		ready_players.erase(player_id)
	
	if is_game_ready():
		emit_signal("game_ready")
		set_player_containers()


# Remove player from game
func remove_player(player_id: int) -> void:
	players.erase(player_id)
	ready_players.erase(player_id)


# Player finished loading assets
func set_player_loaded(player_id: int) -> void:
	loaded_players[player_id] = true
	if all_players_loaded():
		emit_signal("players_loaded")


# Creates player node
func create_player_container(player_id: int) -> void:
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


func _on_DeckManager_player_received_card(player_id, card_deck_id):
	get_node(str(player_id)).add_card(card_deck_id)
	print(get_node(str(player_id)).stats)
