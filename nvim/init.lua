require("keymap")

local set = vim.opt
vim.g.mapleader = ' '

-- Workspace
set.background = "dark"
set.number = true
set.relativenumber = true

-- Indentations
set.expandtab = true
set.smarttab = true
set.smartindent = true
set.autoindent = true
set.shiftwidth = 4
set.tabstop = 4
set.softtabstop = 4
vim.cmd('filetype plugin indent on')

-- Searching
vim.opt.ignorecase = false
vim.opt.wildmenu = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Other
set.syntax = "on"
set.mouse = "nv"
set.undofile = true
set.swapfile = false
set.clipboard = "unnamedplus"
set.cursorline = true
set.cursorlineopt = "number"

-- Live reload kitty config
vim.cmd[[autocmd BufWritePost ~/.config/kitty/kitty.conf :silent !kill -SIGUSR1 $(pgrep kitty)]]

