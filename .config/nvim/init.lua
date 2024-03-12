vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("let g:loaded_matchparen=1")
vim.cmd("set relativenumber")
vim.cmd("set number")
vim.g.mapleader = " "
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
    { "rose-pine/neovim", name = "rose-pine" },    
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
    {'nvim-telescope/telescope.nvim', tag = '0.1.5', dependencies = { 'nvim-lua/plenary.nvim' }},
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},

}
local opts = {}
require("lazy").setup(plugins, opts)

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>g', builtin.live_grep, {})

local configs = require("nvim-treesitter.configs")
configs.setup({
    ensure_installed = {"lua", "javascript", "c", "python", "rust", "html", "vim"},
    sync_install = false,
    auto_install = true,
    highlight = { enable = true,
        additional_vim_regex_highlighting = false },
    indent = { enable = true },
})
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"