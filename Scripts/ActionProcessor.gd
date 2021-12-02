extends Node


class_name ActionProcessor

var action_id


func attempt_action(_player_container, _info):
	pass


func use_action(player_container) -> bool:
	if not player_container.used_action:
		player_container.set_used_action(true)
		return true
	return false


func use_free_action(player_container) -> bool:
	var free_action_count = player_container.get_free_action_count(action_id)
	if free_action_count > 0:
		free_action_count -=1
		player_container.set_free_action_count(action_id, free_action_count)
		return true
	return false
