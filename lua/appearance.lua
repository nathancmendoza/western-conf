local wezterm = require("wezterm")
local options = require("options")

local function determine_color_scheme()
	local mode = nil
	if wezterm.gui then
		if wezterm.gui.get_appearance():find("Light") then
			mode = "light"
		else
			mode = "dark"
		end
	else
		mode = "dark"
	end

	return options.appearance.colors.scheme[mode]
end

local function configure_cursor(config)
	config.default_cursor_style = options.appearance.cursor.style
end

local function configure_colors(config)
	-- Set the color scheme
	config.color_scheme = determine_color_scheme()
end

local function configure_tabbar(config)
	-- Configure tab bar appearance
	config.use_fancy_tab_bar = false
end

return function(config)
	configure_colors(config)
	configure_tabbar(config)
	configure_cursor(config)
end
