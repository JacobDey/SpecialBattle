//

function placeholder_goblin(_filename, _value) {
	var _json_content = json_stringify(_value);
	file_write_all_text(_filename, _json_content);
}

// show_debug_message(variable_struct_get_names(variable_global_get("goblins").Units));

var unitNames = variable_struct_get_names(variable_global_get("goblins").Units);
var buildingNames = variable_struct_get_names(variable_global_get("goblins").Buildings);
var spellNames = variable_struct_get_names(variable_global_get("goblins").Spells);

var cardNames = array_concat(unitNames, buildingNames, spellNames);
show_debug_message(cardNames)

var shuffledCardNames = array_shuffle(cardNames)

var firstCard = "card_" + cardNames[0];
var secondCard = "card_" + cardNames[1];
var thirdCard = "card_" + cardNames[2];
var fourthCard = "card_" + cardNames[3];
var fifthCard = "card_" + cardNames[4];
var sixthCard = "card_" + cardNames[5];
var seventhCard = "card_" + cardNames[6];
var eightCard = "card_" + cardNames[7];

show_debug_message(firstCard);
instance_create_layer(0,316,layer_get_id("Instances"),asset_get_index(firstCard));
instance_create_layer(320,0,layer_get_id("Instances"),asset_get_index(secondCard));
instance_create_layer(320,632,layer_get_id("Instances"),asset_get_index(thirdCard));
instance_create_layer(640,316,layer_get_id("Instances"),asset_get_index(fourthCard));
instance_create_layer(960,316,layer_get_id("Instances"),asset_get_index(fifthCard));
instance_create_layer(1280,0,layer_get_id("Instances"),asset_get_index(sixthCard));
instance_create_layer(1280,632,layer_get_id("Instances"),asset_get_index(seventhCard));
instance_create_layer(1600,316,layer_get_id("Instances"),asset_get_index(eightCard));

//instance_create_layer(1,1,layer_get_id("Instances"),card_baptismal_bog)

//show_debug_message(string((unitNames.concat(buildingNames)).concat(spellNames)));

//inst_33A7D4B0

show_debug_message("Draft Room Object Executed");