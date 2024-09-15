//draw_cards();

// WASD Player 1
a_key = keyboard_check(ord("A"));
w_key = keyboard_check(ord("W"));
d_key = keyboard_check(ord("D"));
s_key = keyboard_check(ord("S"));
spacebar = keyboard_check(vk_space);
lshift = keyboard_check(vk_lshift);


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

left_cursor = keyboard_check(vk_left);
up_cursor = keyboard_check(vk_up);
right_cursor = keyboard_check(vk_right);
down_cursor = keyboard_check(vk_down);
n_key = keyboard_check(ord("N"));
m_key = keyboard_check(ord("M"));

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

if (p1lockedIn != "none" and p2lockedIn != "none") {
	ds_list_add(listOfPickedCards, p1lockedIn);
	ds_list_add(listOfPickedCards, p2lockedIn);
	
		switch (p1lockedIn)
	{
	    case "left":
	        ds_list_add(p1deck,shuffledCardNames[0])
	    break;

	    case "up":
	        ds_list_add(p1deck,shuffledCardNames[1])
	    break;

	    case "down":
	        ds_list_add(p1deck,shuffledCardNames[2])
	    break;
	
	    case "right":
	        ds_list_add(p1deck,shuffledCardNames[3])
	    break;
	}

	switch (p2lockedIn)
	{
	    case "left":
	        ds_list_add(p2deck,shuffledCardNames[4])
	    break;

	    case "up":
	        ds_list_add(p2deck,shuffledCardNames[5])
	    break;

	    case "down":
	        ds_list_add(p2deck,shuffledCardNames[6])
	    break;
	
	    case "right":
	        ds_list_add(p2deck,shuffledCardNames[7])
	    break;
	}
	
	//what to do here... hmm... well i thin
	/*var p1leftCard = "card_" + shuffledCardNames[0];
var p1topCard = "card_" + shuffledCardNames[1];
var p1bottomCard = "card_" + shuffledCardNames[2];
var p1rightCard = "card_" + shuffledCardNames[3];
var p2leftCard = "card_" + shuffledCardNames[4];
var p2topCard = "card_" + shuffledCardNames[5];
var p2bottomCard = "card_" + shuffledCardNames[6];
var p2rightCard = "card_" + shuffledCardNames[7];*/
}

//if (no cards are left) {
//repeat(8)
//	{
//	    array_shift(shuffledCardNames);
//	}
//}