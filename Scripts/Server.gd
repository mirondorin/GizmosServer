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
	$GameState.remove_player(player_id)
	rpc_id(0, "set_player_list", $GameState.players)


remote func register_player(player_name):
	var player_id = get_tree().get_rpc_sender_id()
	$GameState.players[player_id] = player_name
	rpc_id(0, "set_player_list", $GameState.players)
	

remote func set_player_status(player_status: bool):
	var player_id = get_tree().get_rpc_sender_id()
	$GameState.set_player_status(player_id, player_status)
	rpc_id(0, "set_ready_players", $GameState.ready_players)


func _on_GameState_game_ready():
	rpc_id(0, "start_game")


remote func player_loaded():
	var player_id = get_tree().get_rpc_sender_id()
	$GameState.set_player_loaded(player_id)


func _on_GameState_players_loaded():
	$DeckManager.fill_all_revealed()


func add_revealed_card(card_json: Dictionary):
	rpc_id(0, "add_revealed_card", card_json)
