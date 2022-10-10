-- Disabling Lex 
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1

-- LEADER
-- These keybindings need to be defined before the first /
-- is called; otherwise, it will default to "\"
vim.g.mapleader = " "
vim.g.localleader = "\\"

-- IMPORTS
require('stepyt.vars')      -- Variables
require('stepyt.opts')      -- Options
require('stepyt.keys')      -- Keymaps
require('stepyt.plug')      -- Plugins

-- PLUGINS SETTINGS
require('stepyt.toggleterm')

vim.cmd "colorscheme dracula"

require("nvim-tree").setup()
require('lualine').setup {
  options = {
    theme = 'dracula-nvim'
  }
}


require("mason").setup{}
