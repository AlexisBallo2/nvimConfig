require("setups.set")
require("setups.remap")
vim.g.vimtex_view_method = "skim"
vim.g.vimtex_view_skim_activate = 1
vim.g.vimtex_view_skim_sync = 1
--
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


require("lazy").setup({
	-- { "chrsm/impulse.nvim",
	-- 	config = function()
	-- 		require("impulse.nvim").setup({})
	-- 	end,
	-- },
	{ 'nvim-telescope/telescope.nvim', tag = '0.1.1', dependencies = { 'nvim-lua/plenary.nvim' } },
	"pangloss/vim-javascript",
	-- { 'kevinhwang91/nvim-ufo', dependencies = 'kevinhwang91/promise-async' },
	"MaxMEllon/vim-jsx-pretty",
	"preservim/nerdtree",
	"nvim-treesitter/nvim-treesitter",
	{ "kkoomen/vim-doge", config = function()
		-- load the colorscheme here
		vim.cmd([[:call doge#install()]])
	end, },
	'tpope/vim-commentary',
	"theprimeagen/harpoon",
	"Raimondi/delimitMate",
	-- "folke/tokyonight.nvim",
	{ "catppuccin/nvim", name = "catppuccin" },
	"lervag/vimtex",
	{
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v2.x',
		dependencies = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' }, -- Required
			{ 'williamboman/mason.nvim' }, -- Optional
			{ 'williamboman/mason-lspconfig.nvim' }, -- Optional

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' }, -- Required
			{ 'hrsh7th/cmp-nvim-lsp' }, -- Required
			{ 'hrsh7th/cmp-buffer' }, -- Optional
			{ 'hrsh7th/cmp-path' }, -- Optional
			{ 'saadparwaiz1/cmp_luasnip' }, -- Optional
			{ 'hrsh7th/cmp-nvim-lua' }, -- Optional

			-- Snippets
			{ 'L3MON4D3/LuaSnip' }, -- Required
			{ 'rafamadriz/friendly-snippets' }, -- Optional
		}
	}
})


-- local lsp = require('lsp-zero').preset({
--   name = 'minimal',
--   set_lsp_keymaps = true,
--   manage_nvim_cmp = true,
--   suggest_lsp_servers = true,
-- })
-- -- (Optional) Configure lua language server for neovim
-- lsp.nvim_workspace()

-- lsp.setup()
