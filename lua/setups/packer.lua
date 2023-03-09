vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
	use 'folke/tokyonight.nvim'
	use 'wbthomason/packer.nvim'
	use 'preservim/nerdtree'
	-- Post-install/update hook with neovim command
	use 'ThePrimeagen/vim-be-good'
	-- latex previewing
	use 'lervag/vimtex'
	-- Commenting
	use {'tpope/vim-commentary'}

	-- auto close
	use {'Raimondi/delimitMate'}
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		-- or                            , branch = '0.1.x',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use {
		'lewis6991/gitsigns.nvim',
	}
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{ 'neovim/nvim-lspconfig' },
			{ 'williamboman/mason.nvim' },
			{ 'williamboman/mason-lspconfig.nvim' },

			-- Autocompletion
			{ 'hrsh7th/nvim-cmp' },
			{ 'hrsh7th/cmp-buffer' },
			{ 'hrsh7th/cmp-path' },
			{ 'saadparwaiz1/cmp_luasnip' },
			{ 'hrsh7th/cmp-nvim-lsp' },
			{ 'hrsh7th/cmp-nvim-lua' },

			-- Snippets
			{ 'L3MON4D3/LuaSnip' },
			{ 'rafamadriz/friendly-snippets' },
		}
	}
	use({
		"iamcco/markdown-preview.nvim",
		run = function() vim.fn["mkdp#util#install"]() end,
	})

	use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })
end)
