local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
	'tsserver',
	'eslint',
	'sumneko_lua',
	'pyright'
})

lsp.nvim_workspace()

lsp.set_preferences({
	suggest_lsp_servers = true,
	setup_servers_on_start = true,
	set_lsp_keymaps = true,
	configure_diagnostics = true,
	cmp_capabilities = true,
	manage_nvim_cmp = true,
	call_servers = 'local',
	sign_icons = {
		error = '✘',
		warn = '▲',
		hint = '⚑',
		info = ''
	}
})

lsp.setup()

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	update_in_insert = true,
	underline = true,
	severity_sort = false,
	float = true,
})
local map = vim.api.nvim_set_keymap
map("n", "<Leader>f", ":LspZeroFormat", { noremap = true, silent = true })
--[[
--
--
-- 	gl: Show diagnostics in a floating window. See :help vim.diagnostic.open_float().
	[d: Move to the previous diagnostic in the current buffer. See :help vim.diagnostic.goto_prev().
	]d: Move to the next diagnostic. See :help vim.diagnostic.goto_next().

--]]
