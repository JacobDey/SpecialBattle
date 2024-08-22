function save_goblins(_struct) {

    var _string = json_stringify(_struct);

    var _file = file_text_open_write("goblins.json");

    file_text_write_string(_file, _string);

    file_text_close(_file);
}

function load_goblins() {
	var _file_path = "goblins.json"; //don't forget that this is in D:\Users\lopoc\Desktop\SpecialBattle\SpecialBattle
    if (file_exists(_file_path)) {
show_debug_message("goblins.json found! :)");

       //var _json = file_read_all_text(_file_path);

       //show_debug_message(_json);

        var _struct = json_load(_file_path);

        
            variable_global_set("goblins", _struct);
        

		show_debug_message("Global Variables:");
		show_debug_message(global);

    } else {
		show_debug_message("goblins.json not found!");
	}

}

/// @function file_read_all_text(filename)
/// @description Reads entire content of a given file as a string, or returns undefined if the file doesn't exist.
/// @param {string} filename		The path of the file to read the content of.
function file_read_all_text(_filename) {
	if (!file_exists(_filename)) {
		return undefined;
	}
	
	var _buffer = buffer_load(_filename);
	var _result = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	return _result;
}

/// @function file_write_all_text(filename,content)
/// @description Creates or overwrites a given file with the given string content.
/// @param {string} filename		The path of the file to create/overwrite.
/// @param {string} content			The content to create/overwrite the file with.
function file_write_all_text(_filename, _content) {
	var _buffer = buffer_create(string_length(_content), buffer_grow, 1);
	buffer_write(_buffer, buffer_string, _content);
	buffer_save(_buffer, _filename);
	buffer_delete(_buffer);
}

/// @function json_load(filename)
/// @description Loads a given JSON file into a GML value (struct/array/string/real).
/// @param {string} filename		The path of the JSON file to load.
function json_load(_filename) {
	var _json_content = file_read_all_text(_filename);
	if (is_undefined(_json_content)) {
		show_debug_message("Couldn't find json!");
		return undefined;
	}
	try {
		show_debug_message("JSON parsed!");
		return json_parse(_json_content);
	} catch (_) {
		// if the file content isn't a valid JSON, prevent crash and return undefined instead
		show_debug_message("JSON not parsed! There's a typo or something!");
		return undefined;
	}
}

/// @function json_save(filename,value)
/// @description Saves a given GML value (struct/array/string/real) into a JSON file.
/// @param {string} filename		The path of the JSON file to save.
/// @param {any} value				The value to save as a JSON file.
function json_save(_filename, _value) {
	var _json_content = json_stringify(_value);
	file_write_all_text(_filename, _json_content);
}

function print_struct(struct_to_print) {
    var str = "";
    for (var i = 0; i < variable_struct_get_size(struct_to_print); i++) {
        var member_name = variable_struct_get_name(struct_to_print, i);
        var member_value = variable_struct_get(struct_to_print, member_name);
        str += member_name + ": " + string(member_value) + "\n";
    }
    show_debug_message(str);
}