--[[ init.lua ]]
-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('stepyt.vars')      -- Variables
require('stepyt.opts')      -- Options
require('stepyt.keys')      -- Keymaps
-- require('plug')      -- Plugins
