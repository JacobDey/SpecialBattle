// this part is an unused garbage funtion. funtionalize this whole document eventually

function placeholder_goblin(_filename, _value) {
	var _json_content = json_stringify(_value);
	file_write_all_text(_filename, _json_content);
}

// This part 8 - ~40 builds an array of all the card names, shuffles them, then deals out four in front of each player

// building "cardNames", an array of all the card names from the 3 card types
var unitNames = variable_struct_get_names(variable_global_get("goblins").Units);
var buildingNames = variable_struct_get_names(variable_global_get("goblins").Buildings);
var spellNames = variable_struct_get_names(variable_global_get("goblins").Spells);
var cardNames = array_concat(unitNames, buildingNames, spellNames);

// shuffles the array of card names
var shuffledCardNames = array_shuffle(cardNames)

// this builds strings that have the same name as the corresponding card object
// for the first 8 names in the list of card names

var firstCard = "card_" + cardNames[0];
var secondCard = "card_" + cardNames[1];
var thirdCard = "card_" + cardNames[2];
var fourthCard = "card_" + cardNames[3];
var fifthCard = "card_" + cardNames[4];
var sixthCard = "card_" + cardNames[5];
var seventhCard = "card_" + cardNames[6];
var eightCard = "card_" + cardNames[7];

// drawing the card objects
instance_create_layer(0,316,layer_get_id("Instances"),asset_get_index(firstCard));
instance_create_layer(320,0,layer_get_id("Instances"),asset_get_index(secondCard));
instance_create_layer(320,632,layer_get_id("Instances"),asset_get_index(thirdCard));
instance_create_layer(640,316,layer_get_id("Instances"),asset_get_index(fourthCard));
instance_create_layer(960,316,layer_get_id("Instances"),asset_get_index(fifthCard));
instance_create_layer(1280,0,layer_get_id("Instances"),asset_get_index(sixthCard));
instance_create_layer(1280,632,layer_get_id("Instances"),asset_get_index(seventhCard));
instance_create_layer(1600,316,layer_get_id("Instances"),asset_get_index(eightCard));

show_debug_message("Draft Room Object Executed");

// this part declares the 2 variables that represent what object each player has suggested
var p1selection = "none";
var p2selection = "none";

var p1deck = [];
var p2deck = [];