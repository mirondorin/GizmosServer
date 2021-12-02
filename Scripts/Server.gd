extends Node

var network = NetworkedMultiplayerENet.new()
var SERVER_PORT = 1909
var MAX_PLAYERS = 4


func _ready():
	start_server()
	

func start_server():
	network.create_server(SERVER_PORT, MAX_PLAYERS)
	get_tree().set_network_peer(network)
	print("Server started")

	network.connect("peer_connected", self, "_peer_connected")
	network.connect("peer_disconnected", self, "_peer_disconnected")


func _peer_connected(player_id: int):
	print("User " + str(player_id) + " connected")
	

func _peer_disconnected(player_id: int):
	print("User " + str(player_id) + " disconnected")
	$GameState.remove_player(str(player_id))
	rpc_id(0, "set_player_list", $GameState.players)


remote func register_player(player_name: String):
	var player_id = str(get_tree().get_rpc_sender_id())
	$GameState.players[player_id] = player_name
	rpc_id(0, "set_player_list", $GameState.players)
	

remote func set_player_status(player_status: bool):
	var player_id = str(get_tree().get_rpc_sender_id())
	$GameState.set_player_status(player_id, player_status)
	rpc_id(0, "set_ready_players", $GameState.ready_players)


func _on_GameState_game_ready():
	rpc_id(0, "start_game")


remote func player_loaded():
	var player_id = str(get_tree().get_rpc_sender_id())
	$GameState.set_player_loaded(player_id)


func _on_GameState_players_loaded():
	$DeckManager.fill_all_revealed()
	EnergyManager.restock_energy_row()
	rpc_id(0, "setup_game")


remote func fetch_player_order():
	var player_id = get_tree().get_rpc_sender_id()
	rpc_id(player_id, "return_player_order", $GameState.player_order)


remote func fetch_active_player():
	var player_id = get_tree().get_rpc_sender_id()
	rpc_id(player_id, "return_active_player", $GameState.get_active_player())


remote func fetch_start_card():
	var player_id = str(get_tree().get_rpc_sender_id())
	rpc_id(0, "return_start_card", $DeckManager.get_start_card(player_id), player_id)


func add_revealed_card(card_json: Dictionary):
	rpc_id(0, "add_revealed_card", card_json)


remote func fetch_energy_row():
	rpc_id(0, "return_energy_row", EnergyManager.energy_row)


func add_to_energy_row(energy_row: Array):
	rpc_id(0, "return_energy_row", energy_row)


remote func fetch_tier_decks_count():
	rpc_id(0, "return_tier_decks_count", $DeckManager.get_tier_decks_count())


remote func process_event(action_id: int, info):
	var player_id = str(get_tree().get_rpc_sender_id())
	var player_container = $GameState.get_player_container(player_id)
	$EventProcessor.process_event(player_container, action_id, info)


func player_stats_updated(player_id: String, player_stats: Dictionary):
	rpc_id(0, "player_stats_updated", player_id, player_stats)
