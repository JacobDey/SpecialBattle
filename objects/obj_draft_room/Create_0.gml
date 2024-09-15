// this part is an unused garbage funtion. funtionalize this whole document eventually

function placeholder_goblin(_filename, _value) {
	var _json_content = json_stringify(_value);
	file_write_all_text(_filename, _json_content);
}

// drawing the card objects

function draw_cards() {
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
	
instance_create_layer(0,316,layer_get_id("Instances"),asset_get_index(firstCard));
instance_create_layer(320,0,layer_get_id("Instances"),asset_get_index(secondCard));
instance_create_layer(320,632,layer_get_id("Instances"),asset_get_index(thirdCard));
instance_create_layer(640,316,layer_get_id("Instances"),asset_get_index(fourthCard));
instance_create_layer(960,316,layer_get_id("Instances"),asset_get_index(fifthCard));
instance_create_layer(1280,0,layer_get_id("Instances"),asset_get_index(sixthCard));
instance_create_layer(1280,632,layer_get_id("Instances"),asset_get_index(seventhCard));
instance_create_layer(1600,316,layer_get_id("Instances"),asset_get_index(eightCard));
}

// drawing the card objects
draw_cards();

// this part declares the 2 variables that represent what object each player 
// has thier cursor over, and the 2 variables that store what they have locked in
p1selection = "none";
p2selection = "none";

p1lockedIn = "none";
p2lockedIn = "none";

// array of card names
var p1deck = [];
var p2deck = [];

// pick timer
var timer = 10.01;

// player 1 keyboard controls
var a_key;
var w_key;
var d_key;
var s_key;
var spacebar;
var lshift;

// player 2 keyboard controls
var left_cursor;
var up_cursor;
var right_cursor;
var down_cursor;
var n_key;
var m_key;

// highlight the cards the players have selected
function highlightCards (p1Input, p2Input) {
	if (p1Input = "left") {
		draw_sprite(spr_selectedCardFrame,0,-6,310);
		show_debug_message("attempting to show card frame")
		//drawshape that you're making in paint.net, a large yellow rectngle
	} else if (p1Input = "up") {
		draw_sprite(spr_selectedCardFrame,0,314,-6);
	} else if (p1Input = "right") {
		draw_sprite(spr_selectedCardFrame,0,634,310);
	} else if (p1Input = "down") {
		draw_sprite(spr_selectedCardFrame,0,314,626);
	}
	
	if (p2Input = "left") {
		draw_sprite(spr_selectedCardFrame,0,954,310);
	} else if (p2Input = "up") {
		draw_sprite(spr_selectedCardFrame,0,1274,-6);
	} else if (p2Input = "right") {
		draw_sprite(spr_selectedCardFrame,0,1594,310);
	} else if (p2Input = "down") { 
		draw_sprite(spr_selectedCardFrame,0,1274,626);
	}
	
	// this runs like shit which is concerningm
}

//instance_create_layer(0,316,layer_get_id("Instances"),asset_get_index(firstCard));
//instance_create_layer(320,0,layer_get_id("Instances"),asset_get_index(secondCard));
//instance_create_layer(320,632,layer_get_id("Instances"),asset_get_index(thirdCard));
//instance_create_layer(640,316,layer_get_id("Instances"),asset_get_index(fourthCard));
//instance_create_layer(960,316,layer_get_id("Instances"),asset_get_index(fifthCard));
//instance_create_layer(1280,0,layer_get_id("Instances"),asset_get_index(sixthCard));
//instance_create_layer(1280,632,layer_get_id("Instances"),asset_get_index(seventhCard));
//instance_create_layer(1600,316,layer_get_id("Instances"),asset_get_index(eightCard));