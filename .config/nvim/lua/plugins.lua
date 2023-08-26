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
  "folke/neodev.nvim",
  "folke/which-key.nvim",
  { "folke/neoconf.nvim", cmd = "Neoconf" },

-- Colorschemes --
  "folke/tokyonight.nvim",
  "navarasu/onedark.nvim",

-- UI --
  "nvim-lualine/lualine.nvim",
  "nvim-tree/nvim-web-devicons",
  "nvim-tree/nvim-tree.lua",

-- Syntax Highlighting --
  "nvim-treesitter/nvim-treesitter",

-- LSP support --
  "VonHeikemen/lsp-zero.nvim",
  "neovim/nvim-lspconfig",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",

-- Autocompletion --
  "hrsh7th/cmp-nvim-lsp",
  "hrsh7th/cmp-nvim-lua",
  "saadparwaiz1/cmp_luasnip";
  "hrsh7th/cmp-buffer",
  "hrsh7th/cmp-path",
  "hrsh7th/cmp-cmdline",
  "hrsh7th/nvim-cmp",
  
-- snippets --
  "L3MON4D3/LuaSnip",
  "rafamadriz/friendly-snippets",

-- startup scree --
  "goolord/alpha-nvim",
}

local opts = {}


require("lazy").setup(plugins, opts)


-- Plugin Options --

require('lualine').setup()
require("mason").setup()
require("mason-lspconfig").setup {
    ensure_installed = { "clangd", "rust_analyzer", "cmake"},
}
require("nvim-tree").setup()



local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp.default_keymaps({buffer = bufnr})
end)

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()
