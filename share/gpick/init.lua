
require('helpers')
suggest('user_init')


function color_web_hex(color_object)
	local c = color_object:get_color();
	return '#' .. string.format('%02X%02X%02X', round(c:red()*255), round(c:green()*255), round(c:blue()*255));
end;

function color_web_hex_3_digit(color_object)
	local c = color_object:get_color();
	return '#' .. string.format('%01X%01X%01X', round(c:red()*15), round(c:green()*15), round(c:blue()*15));
end;

function color_css_hsl(color_object)
	local c = color_object:get_color();
	c = c:rgb_to_hsl();
	return 'hsl(' .. string.format('%d, %d%%, %d%%', round(c:hue()*360), round(c:saturation()*100), round(c:lightness()*100)) .. ')';
end;

function color_css_rgb(color_object)
	local c = color_object:get_color();
	return 'rgb(' .. string.format('%d, %d, %d', round(c:red()*255), round(c:green()*255), round(c:blue()*255)) .. ')';
end;

function gpick_converters_get()
	local converters = {};
	table.insert(converters, 'color_web_hex');
	table.insert(converters, 'color_web_hex_3_digit');
	table.insert(converters, 'color_css_hsl');
	table.insert(converters, 'color_css_rgb');
	return converters;
end;