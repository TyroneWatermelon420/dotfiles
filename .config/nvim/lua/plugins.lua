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
  "lukas-reineke/indent-blankline.nvim",
  "startup-nvim/startup.nvim",
  "nvim-tree/nvim-tree.lua",
  
  -- Colorschemes --
  "folke/tokyonight.nvim",

  -- Lua --
  "nvim-lua/plenary.nvim",
  "nvim-telescope/telescope.nvim",
}

require("lazy").setup(plugins, opts)


-- Plugin Configuration --
require"startup".setup()
require("nvim-tree").setup({
  sort_by = "case_insensitive",
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
