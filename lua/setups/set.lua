vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2 
vim.opt.expandtab = false
vim.g.mapleader = ' '
vim.opt.relativenumber = true
vim.o.scrolloff = 8


vim.keymap.set("n", "<leader>rr", ":source ~/.config/nvim/init.lua")

vim.cmd[[
autocmd VimEnter * NERDTree
]]


vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]

vim.cmd[[
vnoremap p "_dP
]]

