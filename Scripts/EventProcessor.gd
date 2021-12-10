extends Node


enum {ARCHIVE, PICK, BUILD, RESEARCH, CARD_EFFECT}


func _ready():
	$ArchiveProcessor.action_id = ARCHIVE
	$PickProcessor.action_id = PICK
	$BuildProcessor.action_id = BUILD
	$ResearchProcessor.action_id = RESEARCH


func process_event(player_container, action_id: int, info):
	var event_ok

	if action_id == CARD_EFFECT:
		event_ok = $CardEffectProcessor.process_request(player_container, info)
	else:
		var action_processor = get_action_processor(action_id)
		event_ok = action_processor.attempt_action(player_container, info)
	
	if event_ok:
		Server.player_stats_updated(player_container.peer_id, player_container.stats)
		Server.send_status_msg(player_container.peer_id, "")


func get_action_processor(action_id: int):
	match action_id:
		ARCHIVE:
			return $ArchiveProcessor
		PICK:
			return $PickProcessor
		BUILD:
			return $BuildProcessor
		RESEARCH:
			return $ResearchProcessor
