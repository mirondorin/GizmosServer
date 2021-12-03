extends Node


var default_flags = {
	"archived": false,
	"picked": [0, 0, 0, 0],
	"built": [0, 0, 0, 0, 0], # Last element is if built from archive
	"built_tier": [0, 0, 0]
}


func reset_player_flags(player_container):
	player_container.flags = default_flags


func player_picked(player_container, energy_type: int):
	player_container.flags['picked'][energy_type] = 1
