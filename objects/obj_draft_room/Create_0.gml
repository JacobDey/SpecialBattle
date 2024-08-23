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

var firstCard = "card_" + cardNames[0];
show_debug_message(firstCard)
instance_create_layer(1,1,layer_get_id("Instances"),asset_get_index(firstCard))

//instance_create_layer(1,1,layer_get_id("Instances"),card_baptismal_bog)

//show_debug_message(string((unitNames.concat(buildingNames)).concat(spellNames)));

//inst_33A7D4B0

show_debug_message("Draft Room Object Executed");