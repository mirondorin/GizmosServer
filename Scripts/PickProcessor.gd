extends ActionProcessor


func attempt_action(player_container, energy_type: int) -> bool:
	if available_action(player_container):
		if player_container.get_energy_space() > 0 and EnergyManager.get_row_type_amount(energy_type) > 0:
			use_first_avaiable_action(player_container)
			EnergyManager.give_player_energy(player_container, energy_type)
			return true
	return false
