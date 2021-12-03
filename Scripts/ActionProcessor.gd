extends Node


class_name ActionProcessor

var action_id


func attempt_action(_player_container, _info):
	pass



# Returns true if player can make an action
func available_action(player_container) -> bool:
	var free_action_count = player_container.get_free_action_count(action_id)
	if not player_container.used_action or free_action_count > 0:
		return true
	return false


# Uses normal action first if available, else decrementes free action
func use_first_avaiable_action(player_container) -> void:
	var used_action = use_action(player_container)
	if used_action:
		Server.display_end_btn(player_container.peer_id)
		Server.successful_action(player_container.peer_id)
		return
	used_action = use_free_action(player_container)


# Sets player action as used
func use_action(player_container) -> bool:
	if not player_container.used_action:
		player_container.set_used_action(true)
		return true
	return false


# Decrements free action with action id from player
func use_free_action(player_container) -> bool:
	var free_action_count = player_container.get_free_action_count(action_id)
	if free_action_count > 0:
		free_action_count -=1
		player_container.set_free_action_count(action_id, free_action_count)
		return true
	return false
