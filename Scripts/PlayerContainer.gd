extends Node

class_name PlayerContainer

const action = ["archive", "pick", "build", "research"]

var nickname
var peer_id

var stats = {
	"max_energy": 5,
	"max_archive": 1,
	"max_research": 3,
	"energy": [0, 0, 0, 0],
	"excess_energy": [0, 0, 0, 0],
	"archive": [],
	"gizmos": [],
	"vp_tokens": 0
}
var flags = {
	"archived": false,
	"picked": [0, 0, 0, 0],
	"built": [0, 0, 0, 0, 0], # Last element is if built from archive
	"built_tier": [0, 0, 0]
}
var build_discount = {
	"archive" : 0,
	"research" : 0,
	"tier" : [0, 0, 0]
}
var free_action = {
	"archive": 0,
	"pick" : 0,
	"build": 0,
	"research": 0,
	"build_tier": [0, 0, 0]
}
var disabled_actions = {
	"archive": false,
	"research": false
}
var used_action = false


func set_used_action(status: bool) -> void:
	used_action = status


func set_free_action_count(action_id: int, count: int) -> void:
	free_action[action[action_id]] = count


func get_free_action_count(action_id: int) -> int:
	return free_action[action[action_id]]


# Returns total energy of player
func get_energy_count() -> int:
	var sum = 0
	for count in stats['energy']:
		sum += count
	return sum


func get_energy_space() -> int:
	return stats['max_energy'] - get_energy_count()


func add_energy(energy_type: int) -> void:
	stats['energy'][energy_type] += 1


func add_card(card_deck_id: int) -> void:
	stats['gizmos'].append(card_deck_id)
