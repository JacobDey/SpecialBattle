//this needs to be intgrated into the actual gamerules menu to work properly

function save_game_rules() 
{

var _struct =
{
	goblinsActive: true,
	wizardsActive: true,
	dwarvesActive: true,
}

var _string = json_stringify( _struct);

var _file = file_text_open_write("game_rules.json");

file_text_write_string( _file,  _string);

file_text_close(_file);
}



function load_game_rules() 
{
	if(file_exists("game_rules.json"))
	{
		
		var _file = file_text_open_read("game_rules.json");
		
		var _json = file_text_read_string( _file);
		
		var _struct = json_parse( _json);
		
		
		
				if (!variable_global_exists("game_rules"))
					{
					    variable_global_set("game_rules", _struct);
					}
					
		//global.game_rules //SEE IF THIS WORKS, MAKE A "UNLOCKED SETS" MENU
		
		file_text_close(_file);
		
	}

} 

function save_unlocks() 
{

var _struct =
{
	goblinsUnlocked: true,
	wizardsUnlocked: true,
	dwarvesUnlocked: true,
}

var _string = json_stringify( _struct);

var _file = file_text_open_write("unlocks.json");

file_text_write_string( _file,  _string);

file_text_close(_file);
}



function load_unlocks() 
{
	if(file_exists("unlocks.json"))
	{
		
		var _file = file_text_open_read("unlocks.json");
		
		var _json = file_text_read_string( _file);
		
		var _struct = json_parse( _json);
		
		
		
				if (!variable_global_exists("unlocks"))
					{
					    variable_global_set("unlocks", _struct);
					}
					
		//global.game_rules //SEE IF THIS WORKS, MAKE A "UNLOCKED SETS" MENU
		
		file_text_close(_file);
		
	}

} 

function save_options() 
{

var _struct =
{
	colorBlindMode: false
}

var _string = json_stringify( _struct);

var _file = file_text_open_write("options.json");

file_text_write_string( _file,  _string);

file_text_close(_file);
}



function load_options() 
{
	if(file_exists("options.json"))
	{
		
		var _file = file_text_open_read("options.json");
		
		var _json = file_text_read_string( _file);
		
		var _struct = json_parse( _json);
		
		
		
				if (!variable_global_exists("options"))
					{
					    variable_global_set("options", _struct);
					}
					
		//global.game_rules //SEE IF THIS WORKS, MAKE A "UNLOCKED SETS" MENU
		
		file_text_close(_file);
		
	}

} 