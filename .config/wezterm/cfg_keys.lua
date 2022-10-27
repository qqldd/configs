local wezterm = require 'wezterm'
local act = wezterm.action

local mykeys = {
  {
    key = '|',
    mods = 'LEADER|SHIFT',
    action = act.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = '-',
    mods = 'LEADER',
    action = act.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'c',
    mods = 'LEADER',
    action = act.SpawnTab 'CurrentPaneDomain',
  },
  {
    key = 'p',
    mods = 'LEADER',
    action = act.ActivateTabRelative(-1),
  },
  {
    key = 'n',
    mods = 'LEADER',
    action = act.ActivateTabRelative(1),
  },
  {
    key = 'o',
    mods = 'LEADER',
    action = act.ActivateLastTab,
  },
  {
    key = 'P',
    mods = 'LEADER|SHIFT',
    action = act.MoveTabRelative(-1),
  },
  {
    key = 'N',
    mods = 'LEADER|SHIFT',
    action = act.MoveTabRelative(1),
  },
  {
    key = '[',
    mods = 'LEADER',
    action = act.ActivateCopyMode,
  },
}
for i = 1, 8 do
  -- CTRL+ALT + number to activate that tab
  table.insert(mykeys, {
    key = tostring(i),
    mods = 'LEADER',
    action = act.ActivateTab(i - 1),
  })
  -- F1 through F8 to activate that tab
  table.insert(mykeys, {
    key = 'F' .. tostring(i),
    action = act.ActivateTab(i - 1),
  })
end

return mykeys
