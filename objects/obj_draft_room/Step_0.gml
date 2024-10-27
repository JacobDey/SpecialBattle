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


if (spacebar)
{
	p1lockedIn = p1selection;
} else if (lshift)
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


if (n_key)
{
	p2lockedIn = p2selection;
} else if (m_key)
{
	p2lockedIn = "none";
}

highlightCards(p1selection,p2selection);
// next make confirming work
// work on controller support once you have wifi

//var listOfPickedCards = [];

if (p1lockedIn != "none" and p2lockedIn != "none") {
	ds_list_add(listOfPickedCards, p1lockedIn);
	ds_list_add(listOfPickedCards, p2lockedIn);

	
		switch (p1lockedIn)
	{
	    case "left":
			array_insert(variable_global_get("p1deck"), 0, shuffledCardNames[0]);
	    break;

	    case "up":
			array_insert(variable_global_get("p1deck"), 0, shuffledCardNames[1]);
	    break;

	    case "down":
			array_insert(variable_global_get("p1deck"), 0, shuffledCardNames[2]);
	    break;
	
	    case "right":
			array_insert(variable_global_get("p1deck"), 0, shuffledCardNames[3]);
	    break;
	}

	switch (p2lockedIn)
	{
	    case "left":
			array_insert(variable_global_get("p2deck"), 0, shuffledCardNames[4]);
			//array_insert(p2deck, 0, shuffledCardNames[4]);
	    break;

	    case "up":
			array_insert(variable_global_get("p2deck"), 0, shuffledCardNames[5]);
	    break;

	    case "down":
			array_insert(variable_global_get("p2deck"), 0, shuffledCardNames[6]);
	    break;
	
	    case "right":
			array_insert(variable_global_get("p2deck"), 0, shuffledCardNames[7]);
	    break;
	}
	
	var swap;
	show_debug_message("swapping cards??")
	//this part of the code if definetly executing. this is strange
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
	
	betweenPicks()
	
	// Resetting Variables
	p1lockedIn="none"
	p2lockedIn="none"
}