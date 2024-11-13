//draw_cards_minus_selected_card(shuffledCardNames);
// you can only draw_sprite in the draw event
highlightCards(p1selection,p2selection);
//PRINT THEM WHITE
//draw_text(0,0,string(variable_global_get("p1deck")));
// slightly better way to show deck
var p1deck = variable_global_get("p1deck");
var p2deck = variable_global_get("p2deck")

for (var i=0 ; i < array_length_1d(p1deck) ; i++) {
	draw_text_colour(0, i*20, p1deck[i], c_white, c_white, c_white, c_white, 255);
}
for (var i=0 ; i < array_length_1d(p2deck); i++) {
	draw_text_colour(960, i*20, p2deck[i], c_white, c_white, c_white, c_white, 255);
}

//draw_text_colour(0, 0, variable_global_get("p1deck"), c_white, c_white, c_white, c_white, 255);
//draw_text_colour(960, 0, variable_global_get("p2deck"), c_white, c_white, c_white, c_white, 255);
//draw_text(960,0,string(variable_global_get("p2deck")));
//if (string(p1lockedIn) != "none" && string(p2lockedIn) != "none") {
//	draw_clear(c_black);
//	draw_cards_minus_selected_card(shuffledCardNames)
//}