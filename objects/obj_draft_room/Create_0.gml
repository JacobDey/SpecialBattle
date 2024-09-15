// this part is an unused garbage funtion. funtionalize this whole document eventually

function placeholder_goblin(_filename, _value) {
	var _json_content = json_stringify(_value);
	file_write_all_text(_filename, _json_content);
}

// drawing the card objects

// building "cardNames", an array of all the card names from the 3 card types
var unitNames = variable_struct_get_names(variable_global_get("goblins").Units);
var buildingNames = variable_struct_get_names(variable_global_get("goblins").Buildings);
var spellNames = variable_struct_get_names(variable_global_get("goblins").Spells);
var cardNames = array_concat(unitNames, buildingNames, spellNames);
var listOfPickedCards = [];
var p1deck = [];
var p2deck = [];
var packNumber = 0;
var pickNumber = 0;

// the left and right spreads of cards are anchored to these points, for a coming animation
var leftMasterx = 0;
var leftMastery = 0;
var rightMasterx = 954;
var rightMastery = 0;

// shuffles the array of card names
var shuffledCardNames = array_shuffle(cardNames)

function draw_8_cards(shuffledCardNames) {
	
	packNumber = packNumber + 1;
	
	if (packNumber != 1) {
		repeat(8) {
		    array_shift(shuffledCardNames);
		}
	}

// this builds strings that have the same name as the corresponding card object
// for the first 8 names in the list of card names

var p1leftCard = "card_" + shuffledCardNames[0];
var p1topCard = "card_" + shuffledCardNames[1];
var p1bottomCard = "card_" + shuffledCardNames[2];
var p1rightCard = "card_" + shuffledCardNames[3];
var p2leftCard = "card_" + shuffledCardNames[4];
var p2topCard = "card_" + shuffledCardNames[5];
var p2bottomCard = "card_" + shuffledCardNames[6];
var p2rightCard = "card_" + shuffledCardNames[7];
	
var leftMasterx = 0;
var leftMastery = 0;
var rightMasterx = 960;
var rightMastery = 0;
	
instance_create_layer(leftMasterx,leftMastery+316,layer_get_id("Instances"),asset_get_index(p1leftCard));
instance_create_layer(leftMasterx+320,leftMastery+0,layer_get_id("Instances"),asset_get_index(p1topCard));
instance_create_layer(leftMasterx+320,leftMastery+632,layer_get_id("Instances"),asset_get_index(p1bottomCard));
instance_create_layer(leftMasterx+640,leftMastery+316,layer_get_id("Instances"),asset_get_index(p1rightCard));
instance_create_layer(rightMasterx,rightMastery+316,layer_get_id("Instances"),asset_get_index(p2leftCard));
instance_create_layer(rightMasterx+320,rightMastery+0,layer_get_id("Instances"),asset_get_index(p2topCard));
instance_create_layer(rightMasterx+320,rightMastery+632,layer_get_id("Instances"),asset_get_index(p2bottomCard));
instance_create_layer(rightMasterx+640,rightMastery+316,layer_get_id("Instances"),asset_get_index(p2rightCard));

	
	return shuffledCardNames
}

function betweenPicks() {
	//used for storing the names of cards as they swap
	var swap;
	
	swap = p1leftCard;
	p1leftCard = p2leftCard;
	p2leftCard = swap;
	
	swap = p1topCard;
	p1topCard = p2topCard;
	p2topCard = swap;
	
	swap = p1bottomCard;
	p1bottomCard = p2bottomCard;
	p2bottomCard = swap;
	
	swap = p1rightCard;
	p1rightCard = p2rightCard;
	p2rightCard = swap;
	
}

// drawing the card objects
shuffledCardNames=draw_8_cards(shuffledCardNames);

//function that doesn't draw the cards that already been picked
function draw_cards_minus_selected_card(shuffledCardNames) {


// this builds strings that have the same name as the corresponding card object
// for the first 8 names in the list of card names

if (-1 != ds_list_find_index(listOfPickedCards, shuffledCardNames[0])) {
	instance_create_layer(0,316,layer_get_id("Instances"),asset_get_index(p1leftCard));
}
if (-1 != ds_list_find_index(listOfPickedCards, shuffledCardNames[1])) {
	instance_create_layer(320,0,layer_get_id("Instances"),asset_get_index(p1topCard));
}
if (-1 != ds_list_find_index(listOfPickedCards, shuffledCardNames[2])) {
	var p1bottomCard = "card_" + shuffledCardNames[2];
}
if (-1 != ds_list_find_index(listOfPickedCards, shuffledCardNames[3])) {
	var p1rightCard = "card_" + shuffledCardNames[3];
}
if (-1 != ds_list_find_index(listOfPickedCards, shuffledCardNames[4])) {
	var p2leftCard = "card_" + shuffledCardNames[4];
}
if (-1 != ds_list_find_index(listOfPickedCards, shuffledCardNames[5])) {
	var p2topCard = "card_" + shuffledCardNames[5];
}
if (-1 != ds_list_find_index(listOfPickedCards, shuffledCardNames[6])) {
	var p2bottomCard = "card_" + shuffledCardNames[6];
}
if (-1 != ds_list_find_index(listOfPickedCards, shuffledCardNames[7])) {
	var p2rightCard = "card_" + shuffledCardNames[7];
}
	


instance_create_layer(320,632,layer_get_id("Instances"),asset_get_index(p1bottomCard));
instance_create_layer(640,316,layer_get_id("Instances"),asset_get_index(p1rightCard));
instance_create_layer(960,316,layer_get_id("Instances"),asset_get_index(p2leftCard));
instance_create_layer(1280,0,layer_get_id("Instances"),asset_get_index(p2topCard));
instance_create_layer(1280,632,layer_get_id("Instances"),asset_get_index(p2bottomCard));
instance_create_layer(1600,316,layer_get_id("Instances"),asset_get_index(p2rightCard));

	repeat(8)
	{
	    array_shift(shuffledCardNames);
	}
	return shuffledCardNames
}

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