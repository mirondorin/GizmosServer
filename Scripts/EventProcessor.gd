extends Node


enum {ARCHIVE, PICK, BUILD, RESEARCH}


func _ready():
	$ArchiveProcessor.action_id = ARCHIVE
	$PickProcessor.action_id = PICK


func process_event(player_container, action_id: int, info):
	var action_processor = get_action_processor(action_id)
	var action_ok = action_processor.attempt_action(player_container, info)
	
	if action_ok:
		get_parent().player_stats_updated(player_container.name, player_container.stats)


func get_action_processor(action_id: int):
	match action_id:
		ARCHIVE:
			return $ArchiveProcessor
		PICK:
			return $PickProcessor
