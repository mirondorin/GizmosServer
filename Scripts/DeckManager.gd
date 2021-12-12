extends Node


var deck
var tier_decks
var revealed_cards
var start_card


enum {ACTIVE_GIZMO, ARCHIVED_GIZMO, RESEARCH_GIZMO, REVEALED_GIZMO}
const TIER_THREE_REMOVE = 20
const START_CARD_ID = 108


func _init():
	var deck_obj = Deck.new()
	deck = deck_obj.get_deck()
	tier_decks = [[], [], []]
	revealed_cards = [[], [], []]
	set_deck()
	remove_tier_cards(3, TIER_THREE_REMOVE)


# Returns true if card is implemented. 
func is_implemented(card_json: Dictionary) -> bool:
	var not_implemented = [16, 17, 27, 28, 29, 30]
	if card_json['tier'] == 3 and card_json['id'] in not_implemented:
		return false
	return true


# Adds card in tier_decks
func add_to_tier_deck(card_json: Dictionary) -> void:
	var card_tier = card_json['tier'] - 1
	if is_implemented(card_json):
		tier_decks[card_tier].append(card_json['id'])


func remove_from_tier_deck(card_json: Dictionary) -> void:
	var tier_deck = card_json['tier'] - 1
	tier_decks[tier_deck].erase(card_json['id'])


# Adds all cards in tier_decks
func set_deck() -> void:
	for it in range(deck.size() - 1):
		var card_json = deck[str(it)]
		add_to_tier_deck(card_json)
	start_card = deck[str(deck.size() - 1)] # Last card from deck is start_card


# Removes cards from tier deck. Tier is 0 index based
func remove_tier_cards(tier: int, count: int) -> void:
	# Already removed 6 unimplemented cards. TODO remove if later
	randomize()
	if tier == 3:
		count = 14
	for _it in range(count):
		var rand_card_id = tier_decks[tier-1][randi() % tier_decks[tier-1].size()]
		tier_decks[tier-1].erase(rand_card_id)


# Reveal new card to players and remove it from tier_decks
func add_revealed_card(tier: int) -> void:
	var rand_card_id = tier_decks[tier][randi() % tier_decks[tier].size()]
	tier_decks[tier].erase(rand_card_id)
	revealed_cards[tier].push_back(rand_card_id)
	
	var card_json = get_card_json(get_card_deck_id(rand_card_id, tier))
	$CardManager.set_card_status(card_json, REVEALED_GIZMO)
	Server.add_revealed_card(card_json)


func remove_revealed_card(card_json: Dictionary) -> void:
	var tier_deck = card_json['tier'] - 1
	revealed_cards[tier_deck].erase(card_json['id'])


# Fills revealed_cards row
func fill_revealed_tier(tier: int) -> void:
	var max_revealed = 5 - (tier + 1)
	for _it in range(max_revealed):
		add_revealed_card(tier)


# Fills all revealed_cards rows
func fill_all_revealed() -> void:
	randomize()
	for tier in range(0, 3):
		fill_revealed_tier(tier)


func get_card_deck_id(card_tier_id: int, tier: int) -> int:
	return card_tier_id + 36 * tier


func get_card_json(card_deck_id: int) -> Dictionary:
	return deck[str(card_deck_id)]


func get_tier_decks_count() -> Array:
	var tier_decks_count = [[], [], []]
	for tier in range(0, 3):
		tier_decks_count[tier] = tier_decks[tier].size()
	return tier_decks_count


func get_start_card(player_container) -> Dictionary:
	var new_start_card = start_card.duplicate(true)
	
	$CardManager.set_card_owner(new_start_card, player_container.peer_id)
	$CardManager.set_card_status(new_start_card, ACTIVE_GIZMO)
	$CardManager.set_card_usable(new_start_card, true)
	player_container.stats['gizmos'].append(new_start_card)
	
	return new_start_card


func get_research_cards(research_amount: int, tier: int) -> Array:
	var tier_decks_copy = tier_decks[tier].duplicate(true)
	var research_cards = []
	
	for _el in range(research_amount):
		var rand_card_id = tier_decks_copy[randi() % tier_decks_copy.size()]
		tier_decks_copy.erase(rand_card_id)
		rand_card_id = get_card_deck_id(rand_card_id, tier)
		
		var card_json = get_card_json(rand_card_id)
		$CardManager.set_card_status(card_json, RESEARCH_GIZMO)
		research_cards.append(card_json)

	return research_cards


func _on_CardManager_removed_card(card_json):
	match card_json['status']:
		RESEARCH_GIZMO:
			remove_from_tier_deck(card_json)
		REVEALED_GIZMO:
			remove_revealed_card(card_json)
			add_revealed_card(card_json['tier'] - 1)
