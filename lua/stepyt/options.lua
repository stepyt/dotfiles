local opt = vim.opt

opt.colorcolumn = '80'           --  Show col for max line length
opt.number = true                --  Show line numbers
opt.relativenumber = true        --  Show relative line numbers
opt.scrolloff = 8                --  Min num lines of context
opt.signcolumn = "yes"           --  Show the sign column
opt.cursorline = true

-- Filetypes 
opt.encoding = 'utf8'            --  String encoding to use
opt.fileencoding = 'utf8'        --  File encoding to use

-- Theme
opt.syntax = "ON"                --  Allow syntax highlighting
opt.termguicolors = true         --  If term supports ui color then enable

-- Search
opt.ignorecase = true            --  Ignore case in search patterns
opt.smartcase = true             --  Override ignorecase if search contains capitals
opt.incsearch = true             --  Use incremental search
opt.hlsearch = true              --  Highlight search matches

-- Whitespace
opt.autoindent = true
opt.expandtab = true             -- bool: Use spaces instead of tabs
opt.shiftwidth = 4               -- num:  Size of an indent
opt.softtabstop = 4              -- num:  Number of spaces tabs count for in insert mode
opt.tabstop = 4                  -- num:  Number of spaces tabs count for
opt.numberwidth = 2
opt.smartindent = true

-- Splits
opt.splitright = true            -- Place new window to right of current one
opt.splitbelow = true            -- Place new window below the current one
