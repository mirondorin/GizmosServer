extends Node

var network = NetworkedMultiplayerENet.new()
var SERVER_PORT = 1909
var MAX_PLAYERS = 4
#var player_container = preload("res://Scripts/PlayerContainer.gd")


func _ready():
	start_server()
	

func start_server():
	network.create_server(SERVER_PORT, MAX_PLAYERS)
	get_tree().set_network_peer(network)
	print("Server started")

	network.connect("peer_connected", self, "_peer_connected")
	network.connect("peer_disconnected", self, "_peer_disconnected")


func _peer_connected(player_id):
	print("User " + str(player_id) + " connected")
	

func _peer_disconnected(player_id):
	print("User " + str(player_id) + " disconnected")
	$GameState.players.erase(player_id)
	$GameState.ready_players.erase(player_id)
	rpc_id(0, "set_player_list", $GameState.players)


remote func register_player(player_name):
	var player_id = get_tree().get_rpc_sender_id()
	$GameState.players[player_id] = player_name
	rpc_id(0, "set_player_list", $GameState.players)
	

remote func set_player_status(player_status):
	var player_id = get_tree().get_rpc_sender_id()
	$GameState.set_player_status(player_id, player_status)
	rpc_id(0, "set_ready_players", $GameState.ready_players)


func create_player_container(player_id):
	var new_player_container = PlayerContainer.new()
	new_player_container.name = str(player_id)
	get_parent().add_child(new_player_container, true)
