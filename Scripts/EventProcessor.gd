extends Node


enum {ARCHIVE, PICK, BUILD, RESEARCH}


func _ready():
	$ArchiveProcessor.action_id = ARCHIVE
	$PickProcessor.action_id = PICK


func process_event(player_container, action_id: int, info):
	var action_processor = get_action_processor(action_id)
	action_processor.attempt_action(player_container, info)


func get_action_processor(action_id: int):
	match action_id:
		ARCHIVE:
			return $Archiveprocessor
		PICK:
			return $PickProcessor
