local options = require("options")
local wezterm = require("wezterm")

local function configure_fonts(config)
	local fontobj = wezterm.font(options.appearance.font.name)

	if fontobj == nil then
		error("Unknown font name: " .. options.appearance.font.name)
	end

	config.font = fontobj
	config.font_size = options.appearance.font.size
end

return function(config)
	configure_fonts(config)
end
