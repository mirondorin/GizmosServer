extends Node

# Names for players in id:name format
var players = {}
var ready_players = {}


func set_player_status(player_id, player_ready):
	if player_ready:
		ready_players[player_id] = player_ready
	else:
		ready_players.erase(player_id)
