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


func _peer_connected(player_id):
	print("User " + str(player_id) + " connected")


func _peer_disconnected(player_id):
	print("User " + str(player_id) + " disconnected")
