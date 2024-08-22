// obj_card_parent Draw Event
if (card_type == "Spell") {
	draw_sprite(spr_spellCardFrame, image_index, x, y);
} else if (card_type == "Unit") {
	draw_sprite(spr_unitCardFrame, image_index, x, y);
} else if (card_type == "Building") {
		draw_sprite(spr_buildingCardFrame, image_index, x, y);
}

if (card_energy_cost != "") {
	
}

draw_set_font(fnt_onesize);

draw_text_colour(x + 10, y + 10, card_name, c_black, c_black, c_black, c_black, 1);
draw_text_colour(x + 290, y + 10, string(card_energy_cost), c_black, c_black, c_black, c_black, 1);

draw_text_colour(x + 10, y + 30, card_attribute_1 + " " + card_attribute_2 + " " + card_attribute_3, c_black, c_black, c_black, c_black, 1);

if (card_rarity = "C") {
	draw_text_colour(x + 290, y + 30, card_rarity, c_black, c_black, c_black, c_black, 1);
} else if (card_rarity = "U") {
	draw_text_colour(x + 290, y + 30, card_rarity, c_silver, c_silver, c_silver, c_silver, 1);
} else if (card_rarity = "R") {
	draw_text_colour(x + 290, y + 30, card_rarity, c_yellow, c_yellow, c_yellow, c_yellow, 1);
} else if (card_rarity = "MR") {
	draw_text_colour(x + 290, y + 30, card_rarity, c_orange, c_orange, c_orange, c_orange, 1);
}

if (card_type == "Unit") {
	draw_sprite(spr_attack_dmg, image_index, x + 10, y + 52);
	draw_text_colour(x + 27, y + 50, card_damage, c_black, c_black, c_black, c_black, 1);
	draw_sprite(spr_attack_speed, image_index, x + 70, y + 51);
	draw_text_colour(x + 87, y + 50, card_attack_speed, c_black, c_black, c_black, c_black, 1);
	draw_sprite(spr_range, image_index, x + 134, y + 52);
	draw_text_colour(x + 151, y + 50, card_range, c_black, c_black, c_black, c_black, 1);
	draw_sprite(spr_movement_speed, image_index, x + 190, y + 52);
	draw_text_colour(x + 207, y + 50, card_move_speed, c_black, c_black, c_black, c_black, 1);
	draw_sprite(spr_health, image_index, x + 250, y + 52);
	draw_text_colour(x + 267, y + 50, card_health, c_black, c_black, c_black, c_black, 1);
	
	// only some units have special attacks, this conditional checks if a unit has a special attack
	// by checking if the attacks speed, damage, and range are all 0.
	if ((real(card_special_attack_speed) + real(card_special_attack_damage)  + real(card_special_attack_range))==real(0)) {
		draw_sprite(spr_special_attack_dmg, image_index, x + 10, y + 72);
	draw_text_colour(x + 27, y + 70, card_special_attack_damage, c_black, c_black, c_black, c_black, 1);
	draw_sprite(spr_special_attack_speed, image_index, x + 70, y + 71);
	draw_text_colour(x + 87, y + 70, card_special_attack_speed, c_black, c_black, c_black, c_black, 1);
	draw_sprite(spr_special_range, image_index, x + 134, y + 72);
	draw_text_colour(x + 151, y + 70, card_special_attack_range, c_black, c_black, c_black, c_black, 1);
	}
	
	if ((card_ability_text != "") && (card_special_attack != "")) {
draw_text_ext(x + 10, y + 90, "Ability: " + card_ability_text + "\n \n" + "Special Attack: " + card_special_attack, 16, 300);
} else if (card_ability_text != "") {
	draw_text_ext(x + 10, y + 90, "Ability: " + card_ability_text, 16, 300);
} else if (card_special_attack != "") {
	draw_text_ext(x + 10, y + 90, "Special Attack: " + card_special_attack, 16, 300);
}
	
} else if (card_type = "Spell") {
	draw_sprite(spr_cooldown, image_index, x + 10, y + 52);
	draw_text_colour(x + 27, y + 50, card_cooldown, c_black, c_black, c_black, c_black, 1);
	draw_sprite(spr_aoe, image_index, x + 74, y + 51);
	if (card_aoe > 1919) {
		draw_text_colour(x + 91, y + 50, "ALL", c_black, c_black, c_black, c_black, 1);
	} else {
	draw_text_colour(x + 91, y + 50, card_aoe, c_black, c_black, c_black, c_black, 1);
	}
	draw_text_ext(x + 10, y + 90, "Ability: " + card_ability_text, 16, 300);
	
} else if (card_type = "Building") {
	draw_sprite(spr_health, image_index, x + 10, y + 52);
	draw_text_colour(x + 27, y + 50, card_health, c_black, c_black, c_black, c_black, 1);
	draw_sprite(spr_size, image_index, x + 70, y + 52);
	draw_text_colour(x + 87, y + 50, card_size, c_black, c_black, c_black, c_black, 1);
	draw_text_ext(x + 10, y + 90, "Ability: " + card_ability_text, 16, 300);
}

// put a line break and then staple the special attack text to it even though it's ugly this conditional doesn't care if the child
// card is a card that will never have a special attack, like a pingus or something
