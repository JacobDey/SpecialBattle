//

function placeholder_goblin(_filename, _value) {
	var _json_content = json_stringify(_value);
	file_write_all_text(_filename, _json_content);
}
show_debug_message(variable_struct_get_names(variable_global_get("goblins").Units));
show_debug_message("Draft Room Object Executed");