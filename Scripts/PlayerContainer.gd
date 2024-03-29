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
	"built": [0, 0, 0, 0],
	"archive_built": false,
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


func get_energy_type_amount(energy_type: int) -> int:
	return stats['energy'][energy_type]


func get_excess_energy_type_amount(energy_type: int) -> int:
	return stats['excess_energy'][energy_type]


# Returns total energy of player
func get_energy_amount() -> int:
	var sum = 0
	for count in stats['energy']:
		sum += count
	return sum


func get_energy_space() -> int:
	return stats['max_energy'] - get_energy_amount()


func add_energy(energy_type: int) -> void:
	stats['energy'][energy_type] += 1


# Returns number of archived cards player has
func get_archive_amount() -> int:
	return stats['archive'].size()


func get_archive_space() -> int:
	return stats['max_archive'] - get_archive_amount()
	

func get_amount_active():
	return stats['gizmos'].size()


func get_amount_active_tier(tier: int):
	var amount = 0
	
	for card_json in stats['gizmos']:
		if card_json['tier'] == tier:
			amount += 1
	return amount


func get_research_amount() -> int:
	return stats['max_research']


func has_archived() -> bool:
	return flags['archived']


# Values of energy_type must be in range {RED, YELLOW, BLUE, BLACK}
func has_picked(energy_type: Array) -> bool:
	for el in energy_type:
		if flags['picked'][el]:
			return true
	return false


# Values of build_type must be in range {RED, YELLOW, BLUE, BLACK}
func has_built(build_type: Array) -> bool:
	for el in build_type:
		if flags['built'][el]:
			return true
	return false


func has_archive_built() -> bool:
	return flags['archive_built']


# Values of energy_arr must be in range {RED, YELLOW, BLUE, BLACK, ANY_ENERGY}
func has_energy_type(energy_arr: Array) -> bool:
	for energy_type in energy_arr:
		if energy_type == EnergyManager.ANY_ENERGY:
			return get_energy_amount() > 0
		elif stats['energy'][energy_type] or stats['excess_energy'][energy_type]:
			return true
	return false
