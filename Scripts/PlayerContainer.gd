extends Node

class_name PlayerContainer


var nickname

var stats = {
	"max_energy": 5,
	"max_archive": 1,
	"max_research": 3,
	"energy": [0, 0, 0, 0],
	"excess_energy": [0, 0, 0, 0],
	"archive": [],
	"gizmos": [],
	"vp_tokens": 0
}
var flags = {
	"archived": false,
	"picked": [0, 0, 0, 0],
	"built": [0, 0, 0, 0, 0], # Last element is if built from archive
	"built_tier": [0, 0, 0]
}
var build_discount = {
	"archive" : 0,
	"research" : 0,
	"tier" : [0, 0, 0]
}
var free_action = {
	"archive": 0,
	"pick" : 0,
	"build": 0,
	"research": 0,
	"build_tier": [0, 0, 0]
}
var disabled_actions = {
	"archive": false,
	"research": false
}
var used_action = false
var using_action = false
