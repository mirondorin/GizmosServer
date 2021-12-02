extends Node


var energy_dispenser = []
var energy_row = [0, 0, 0, 0]

const MAX_ENERGY_TYPE = 13
const MAX_ENERGY_ROW = 6
const LAST_ENERGY_TYPE = 4

# Energy color type codes
enum {RED, YELLOW, BLUE, BLACK}


func _init():
	init_energy_dispenser_row()


# Initializes energy_dispenser and energy_row
func init_energy_dispenser_row() -> void:
	for _it in range(MAX_ENERGY_TYPE):
		energy_dispenser.append(RED)
		energy_dispenser.append(YELLOW)
		energy_dispenser.append(BLUE)
		energy_dispenser.append(BLACK)


# Removes energy from dispenser and adds it to energy row
func add_to_energy_row() -> void:
	var rand_energy = rand_from_dispenser()
	energy_row[rand_energy] += 1
	get_tree().get_root().get_node("Server").add_to_energy_row(energy_row)


func remove_from_energy_row(energy_type: int) -> void:
	energy_row[energy_type] -= 1


# Fills energy row
func restock_energy_row() -> void:
	while get_energy_row_sum() != MAX_ENERGY_ROW:
		add_to_energy_row()


# Removes energy from energy_dispenser and returns energy
# Return value in range [0, 3]. Check above constants for energy type codes
func rand_from_dispenser() -> int:
	var dispenser_size = energy_dispenser.size()
	if dispenser_size == 0:
		return -1
	var rand_energy = energy_dispenser[randi() % dispenser_size]
	energy_dispenser.erase(rand_energy)
	return rand_energy


# Add energy to dispenser when a player builds a card
func add_to_energy_dispenser(energy_arr: Array) -> void:
	for energy_type in range(LAST_ENERGY_TYPE):
		var count = energy_arr[energy_type]
		for _it in range (0, count):
			energy_dispenser.append(energy_type)


func give_player_energy(player_container, energy_type: int) -> void:
	player_container.add_energy(energy_type)
	remove_from_energy_row(energy_type)
	add_to_energy_row()


# Returns total energy in energy_row
func get_energy_row_sum() -> int:
	var sum = 0
	for count in energy_row:
		sum += count
	return sum


func get_row_type_amount(energy_type: int) -> int:
	return energy_row[energy_type]
