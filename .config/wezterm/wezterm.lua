local wezterm = require 'wezterm'
local act = wezterm.action

local mykeys = require("cfg_keys")
local ssh = require("cfg_ssh")


return {
  -- Appearance
  color_scheme = 'Solarized Darcula',
  colors = {
    -- The default background color
    background = 'rgb(40,40,40)',
  },
  window_background_opacity = 0.9,
  font = wezterm.font ('Hack Nerd Font', { weight = 'Medium' }),
  font_size = 13,
  line_height = 1.1,
  freetype_load_target = "Normal",

  scrollback_lines = 65536,

  ssh_domains = ssh,

  -- timeout_milliseconds defaults to 1000 and can be omitted
  leader = { key = 'z', mods = 'CTRL', timeout_milliseconds = 3000 },
  keys = mykeys,
}