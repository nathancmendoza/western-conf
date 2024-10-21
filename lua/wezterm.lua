-- Pull in the wezterm API
local wezterm = require("wezterm")

-- Pull in custom configuration settings
local appearance = require("appearance")
local typography = require("typography")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- Apply custom configuration settings
appearance(config)
typography(config)

-- and finally, return the configuration to wezterm
return config
