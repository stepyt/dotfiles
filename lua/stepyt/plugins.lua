local fn = vim.fn

-- Used to automatically install and setup packer.nvim if not preesent on
-- the machine
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
        'git', 
        'clone', 
        '--depth', 
        '1', 
        'https://github.com/wbthomason/packer.nvim', 
        install_path
    })
    print "Installing packer close and reopen Neovim..."
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local PACKER_BOOTSTRAP = ensure_packer()

-- Autocommand that reloads neovim whenever you save the plugins.lua file and
-- runs :PackerCompile
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile 
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function(use)
  use "wbthomason/packer.nvim"                      -- Have packer manage itself
  use "nvim-lua/popup.nvim"                         -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim"                       -- Useful lua functions used by lots of plugins
 
  use {                                             -- Markdown
      'iamcco/markdown-preview.nvim', 
      run = 'cd app && yarn install', 
      cmd = 'MarkdownPreview'
  }

  -- Theme
  use { 'DanilaMihailov/beacon.nvim' }               -- cursor jump
  use {
    'nvim-lualine/lualine.nvim',                     -- statusline
    requires = {
        'kyazdani42/nvim-web-devicons',
        opt = true
    }
  }
  use { 'Mofiqul/dracula.nvim' }

  -- CMP
  use "hrsh7th/nvim-cmp"                            -- The completion plugin
  use "hrsh7th/cmp-buffer"                          -- buffer completions
  use "hrsh7th/cmp-path"                            -- path completions
  use "hrsh7th/cmp-cmdline"                         -- cmdline completions
  use "saadparwaiz1/cmp_luasnip"                    -- snippet completions
  -- snippets
  use "L3MON4D3/LuaSnip"                            -- snippet engine
  use "rafamadriz/friendly-snippets"                -- a bunch of snippets to use

  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"
  
  -- Terminal
  use 'akinsho/toggleterm.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
