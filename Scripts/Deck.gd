extends Node

class_name Deck

var deck_path = "res://Resources/Deck/deck.json"
var deck


func _init():
	var deck_file = File.new()
	deck_file.open(deck_path, File.READ)
	var deck_json = JSON.parse(deck_file.get_as_text())
	deck_file.close()
	deck = deck_json.result


func get_deck() -> Dictionary:
	return deck
