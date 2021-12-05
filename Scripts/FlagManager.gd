extends Node


var default_flags = {
	"archived": false,
	"picked": [0, 0, 0, 0],
	"built": [0, 0, 0, 0],
	"archive_built": false,
	"built_tier": [0, 0, 0]
}


func reset_player_flags(player_container):
	player_container.flags = default_flags


func player_picked(player_container, energy_type: int):
	player_container.flags['picked'][energy_type] = 1


func player_archived(player_container):
	player_container.flags['archived'] = true


func player_built(player_container, card_json: Dictionary):
	var card_type = DeckManager.get_node("CardManager").get_card_type(card_json)
	player_container.flags['built'][card_type] = 1


func player_archive_built(player_container):
	player_container.flags['archive_built'] = true
