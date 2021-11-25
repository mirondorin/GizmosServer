extends Node


var deck
var tier_decks
var revealed_cards
var start_card


func _init():
	var deck_obj = Deck.new()
	deck = deck_obj.get_deck()
	tier_decks = [[], [], []]
	revealed_cards = [[], [], []]
	set_deck()


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


# Adds all cards in tier_decks
func set_deck() -> void:
	for it in range(deck.size() - 1):
		var card_json = deck[str(it)]
		add_to_tier_deck(card_json)
	start_card = deck[str(deck.size() - 1)] # Last card from deck is start_card


# Reveal new card to players and remove it from tier_decks
func add_revealed_card(tier: int) -> void:
	var rand_card_id = tier_decks[tier][randi() % tier_decks[tier].size()]
	tier_decks[tier].erase(rand_card_id)
	revealed_cards[tier].push_back(rand_card_id)
	
	var card_json = get_card_json(get_card_deck_id(rand_card_id, tier))
	get_parent().add_revealed_card(card_json)


# Fills revealed_cards row
func fill_revealed_tier(tier: int) -> void:
	var max_revealed = 5 - (tier + 1)
	for _it in range(max_revealed):
		add_revealed_card(tier)


# Fills all revealed_cards rows
func fill_all_revealed():
	for tier in range(0, 3):
		fill_revealed_tier(tier)


func get_card_deck_id(card_tier_id: int, tier: int) -> int:
	return card_tier_id + 36 * tier


func get_card_json(card_deck_id: int) -> Dictionary:
	return deck[str(card_deck_id)]


func get_revealed_list():
	var card_list = []
	for tier in range(len(revealed_cards)):
		for id in revealed_cards[tier]:
			var card_json = get_card_json(get_card_deck_id(id, tier))
			card_list.append(card_json)
