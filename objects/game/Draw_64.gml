draw_text(10, 10, string(points) + "");

var p1deck = variable_global_get("p1deck");
var p2deck = variable_global_get("p2deck");

for (var i=0 ; i < array_length_1d(p1deck) ; i++) {
	draw_text_colour(0, i*20, p1deck[i], c_white, c_white, c_white, c_white, 255);
}
for (var i=0 ; i < array_length_1d(p2deck); i++) {
	draw_text_colour(960, i*20, p2deck[i], c_white, c_white, c_white, c_white, 255);
}