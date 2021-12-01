extends ActionProcessor


func attempt_action(player_container, energy_type: int) -> bool:
	if use_action(player_container) or use_free_action(player_container):
		if player_container.get_energy_space() > 0:
			player_container.add_energy(energy_type)
			return true
	return false
