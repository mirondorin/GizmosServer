extends Node


var deck
var tier_decks
var start_card


func _init():
	var deck_obj = Deck.new()
	deck = deck_obj.get_deck()
	tier_decks = [[], [], []]
	set_deck()


func is_implemented(card_json: Dictionary) -> bool:
	var not_implemented = [16, 17, 27, 28, 29, 30]
	if card_json['tier'] == 3 and card_json['id'] in not_implemented:
		return false
	return true


func add_to_tier_deck(card_json: Dictionary) -> void:
	var card_tier = card_json['tier']
	if is_implemented(card_json):
		tier_decks[card_tier - 1].append(card_json['id'])


# Last card from deck is start_card
func set_deck() -> void:
	for it in range(deck.size() - 1):
		var card_json = deck[str(it)]
		add_to_tier_deck(card_json)
	start_card = deck[str(deck.size() - 1)]
