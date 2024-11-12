// WASD Player 1
var a_key = keyboard_check(ord("A"));
var w_key = keyboard_check(ord("W"));
var d_key = keyboard_check(ord("D"));
var s_key = keyboard_check(ord("S"));
var spacebar = keyboard_check(vk_space);
var lshift = keyboard_check(vk_lshift);


if (a_key)
{
	p1selection = "left";
} else if (w_key)
{
	p1selection = "up";
} else if (d_key)
{
	p1selection = "right";
} else if (s_key)
{
	p1selection = "down";
}


if (spacebar and timerBetweenPicks == 0)
{
	p1lockedIn = p1selection;
} else if (lshift and timerBetweenPicks == 0)
{
	p1lockedIn = "none";
}

// Arrow Keys Player 2

var left_cursor = keyboard_check(vk_left);
var up_cursor = keyboard_check(vk_up);
var right_cursor = keyboard_check(vk_right);
var down_cursor = keyboard_check(vk_down);
var n_key = keyboard_check(ord("N"));
var m_key = keyboard_check(ord("M"));

if (left_cursor)
{
	p2selection = "left";
} else if (up_cursor)
{
	p2selection = "up";
} else if (right_cursor)
{
	p2selection = "right";
} else if (down_cursor)
{
	p2selection = "down";
}


if (n_key and timerBetweenPicks == 0)
{
	p2lockedIn = p2selection;
} else if (m_key and timerBetweenPicks == 0)
{
	p2lockedIn = "none";
}

highlightCards(p1selection,p2selection);

if (timerBetweenPicks > 0 ) {
	timerBetweenPicks--;
}

if (p1lockedIn != "none" && p2lockedIn != "none" && timerBetweenPicks == 0 && ds_list_find_index(listOfEmptySpacesLeft, p1lockedIn) == -1 && ds_list_find_index(listOfEmptySpacesRight, p2lockedIn) == -1 ) {
	
	timerBetweenPicks = 120;

		switch (p1lockedIn)
	{
		case "up":
			if (cardsSwappedFromOriginalPositions = false) {
				array_insert(variable_global_get("p1deck"), 0, p1topCard);
				instance_destroy(asset_get_index(p1topCard));
				draftRoomActiveCardsArray[0] = "";
				ds_list_add(listOfPickedCards, p1topCard);
			} else {
				array_insert(variable_global_get("p1deck"), 0, p2topCard);
				instance_destroy(asset_get_index(p2topCard));
				draftRoomActiveCardsArray[4] = "";
				ds_list_add(listOfPickedCards, p2topCard);
			}
	    break;
		
		case "right":
			if (cardsSwappedFromOriginalPositions = false) {
				array_insert(variable_global_get("p1deck"), 0, p1rightCard);
				instance_destroy(asset_get_index(p1rightCard));
				draftRoomActiveCardsArray[1] = "";
				ds_list_add(listOfPickedCards, p1rightCard);
			} else {
				array_insert(variable_global_get("p1deck"), 0, p2rightCard);
				instance_destroy(asset_get_index(p2rightCard));
				draftRoomActiveCardsArray[5] = "";
				ds_list_add(listOfPickedCards, p2rightCard);
			}
	    break;
		
		case "down":
			if (cardsSwappedFromOriginalPositions = false) {
				array_insert(variable_global_get("p1deck"), 0, p1bottomCard);
				instance_destroy(asset_get_index(p1bottomCard));
				draftRoomActiveCardsArray[2] = "";
				ds_list_add(listOfPickedCards, p1bottomCard);
			} else {
				array_insert(variable_global_get("p1deck"), 0, p2bottomCard);
				instance_destroy(asset_get_index(p2bottomCard));
				draftRoomActiveCardsArray[6] = "";
				ds_list_add(listOfPickedCards, p2bottomCard);
			}
			
	    break;
		
	    case "left":
			if (cardsSwappedFromOriginalPositions = false) {
				array_insert(variable_global_get("p1deck"), 0, p1leftCard);
				instance_destroy(asset_get_index(p1leftCard));
				draftRoomActiveCardsArray[3] = "";
				ds_list_add(listOfPickedCards, p1leftCard);
			} else {
				array_insert(variable_global_get("p1deck"), 0, p2leftCard);
				instance_destroy(asset_get_index(p2leftCard));
				draftRoomActiveCardsArray[7] = "";
				ds_list_add(listOfPickedCards, p2leftCard);
			}
			
	    break;
	}

	switch (p2lockedIn)
	{
		
		case "up":
			if (cardsSwappedFromOriginalPositions = false) {
				array_insert(variable_global_get("p2deck"), 0, p2topCard);
				instance_destroy(asset_get_index(p2topCard));
				draftRoomActiveCardsArray[4] = "";
				ds_list_add(listOfPickedCards, p2topCard);
			} else {
				array_insert(variable_global_get("p2deck"), 0, p1topCard);
				instance_destroy(asset_get_index(p1topCard));
				draftRoomActiveCardsArray[0] = "";
				ds_list_add(listOfPickedCards, p1topCard);
			}
			
	    break;
		
		case "right":
			if (cardsSwappedFromOriginalPositions = false) {
				array_insert(variable_global_get("p2deck"), 0, p2rightCard);
				instance_destroy(asset_get_index(p2rightCard));
				draftRoomActiveCardsArray[5] = "";
				ds_list_add(listOfPickedCards, p2rightCard);
			} else {
				array_insert(variable_global_get("p2deck"), 0, p1rightCard);
				instance_destroy(asset_get_index(p1rightCard));
				draftRoomActiveCardsArray[1] = "";
				ds_list_add(listOfPickedCards, p1rightCard);
			}
			
	    break;

		case "down":
			if (cardsSwappedFromOriginalPositions = false) {
				array_insert(variable_global_get("p2deck"), 0, p2bottomCard);
				instance_destroy(asset_get_index(p2bottomCard));
				draftRoomActiveCardsArray[6] = "";
				ds_list_add(listOfPickedCards, p2bottomCard);
			} else {
				array_insert(variable_global_get("p2deck"), 0, p1bottomCard);
				instance_destroy(asset_get_index(p1bottomCard));
				draftRoomActiveCardsArray[2] = "";
				ds_list_add(listOfPickedCards, p1bottomCard);
			}
			
	    break;
		
	    case "left":
			if (cardsSwappedFromOriginalPositions = false) {
				array_insert(variable_global_get("p2deck"), 0, p2leftCard);
				instance_destroy(asset_get_index(p2leftCard));
				draftRoomActiveCardsArray[7] = "";
				ds_list_add(listOfPickedCards, p2leftCard);
			} else {
				array_insert(variable_global_get("p2deck"), 0, p1leftCard);
				instance_destroy(asset_get_index(p1leftCard));
				draftRoomActiveCardsArray[3] = "";
				ds_list_add(listOfPickedCards, p1leftCard);
			}
	    break;
	}

	 if (cardsSwappedFromOriginalPositions = false) 
	 {
		 
		 for (i = 0; i < 8; i++) {
			 show_debug_message(i);
			 
			 if (draftRoomActiveCardsArray[i] != "") {
				if (i <= 3) {
					asset_get_index(draftRoomActiveCardsArray[i]).x = cardPlaceCoordinateArray[i+4][0];
					asset_get_index(draftRoomActiveCardsArray[i]).y = cardPlaceCoordinateArray[i+4][1];
				} else {
					asset_get_index(draftRoomActiveCardsArray[i]).x = cardPlaceCoordinateArray[i-4][0];
					asset_get_index(draftRoomActiveCardsArray[i]).y = cardPlaceCoordinateArray[i-4][1];
				}
			 }
			 show_debug_message(draftRoomActiveCardsArray[i]);
		 }
		 
		 cardsSwappedFromOriginalPositions = true;
		 
	 } else { 
		 
		 for (i = 0; i < 8; i++) {
			 show_debug_message(i);
			 if (draftRoomActiveCardsArray[i] != "") {
				if (i <= 3) {
					asset_get_index(draftRoomActiveCardsArray[i]).x = cardPlaceCoordinateArray[i][0];
					asset_get_index(draftRoomActiveCardsArray[i]).y = cardPlaceCoordinateArray[i][1];
				} else {
					asset_get_index(draftRoomActiveCardsArray[i]).x = cardPlaceCoordinateArray[i][0];
					asset_get_index(draftRoomActiveCardsArray[i]).y = cardPlaceCoordinateArray[i][1];
				}
			 }
		 }
		 
		 cardsSwappedFromOriginalPositions = false;
	 }
	
	pickNumber++;
	if (pickNumber = 4) {
		draw_8_cards(shuffledCardNames, packNumber);
	}
	
	betweenPicks()
	
	// Resetting Variables
	p1lockedIn="none"
	p2lockedIn="none"
}