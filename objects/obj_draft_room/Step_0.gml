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
	
	//what to do here... hmm... well i thin
}