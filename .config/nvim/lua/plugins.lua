local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
  -- UI --
  "nvim-tree/nvim-web-devicons",
  "startup-nvim/startup.nvim",
  "lukas-reineke/indent-blankline.nvim",

  -- Git --
  "tpope/vim-fugitive",
  "tpope/vim-rhubarb",

  -- LSP --
  {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
  {'neovim/nvim-lspconfig'},
  {'hrsh7th/cmp-nvim-lsp'},
  {'hrsh7th/nvim-cmp'},
  {'L3MON4D3/LuaSnip'},

  -- Colorschemes --
  "folke/tokyonight.nvim",
  { "ellisonleao/gruvbox.nvim", priority = 1000 },

  -- Lua --
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope.nvim",

  -- Debugger --
  "sakhnik/nvim-gdb",
}

require("lazy").setup(plugins, opts)

-- Plugin Configuration --
require"startup".setup()
require("ibl").setup()

local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

require'lspconfig'.clangd.setup{}
