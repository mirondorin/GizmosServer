extends ActionProcessor


func attempt_action(player_container, energy_type: int) -> bool:
	if available_action(player_container):
		if energy_available(player_container, energy_type) and has_energy_space(player_container):
			use_first_available_action(player_container)
			EnergyManager.give_player_energy(player_container, energy_type)
			return true
	return false


func has_energy_space(player_container) -> bool:
	if player_container.get_energy_space() <= 0:
		Server.send_warning_msg(player_container.peer_id, "You do not have enough energy space")
		return false
	return true


func energy_available(player_container, energy_type: int) -> bool:
	if EnergyManager.get_row_type_amount(energy_type) <= 0:
		Server.send_warning_msg(player_container.peer_id, "No energy of this type available")
		return false
	return true
