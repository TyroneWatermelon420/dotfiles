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
  "nvim-tree/nvim-tree.lua",
  "lukas-reineke/indent-blankline.nvim",

  -- Colorschemes --
  "folke/tokyonight.nvim",
  { "ellisonleao/gruvbox.nvim", priority = 1000 },

  -- Lua --
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope.nvim",
}

require("lazy").setup(plugins, opts)

-- Plugin Configuration --
require"startup".setup()
require"indent_blankline".setup()
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
