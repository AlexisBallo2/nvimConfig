---- Only depend on `nvim-treesitter/queries/filetype/folds.scm`,
---- performance and stability are better than `foldmethod=nvim_treesitter#foldexpr()`
---- use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
--require('ufo').setup({
--    provider_selector = function(bufnr, filetype, buftype)
--        return {'treesitter', 'indent'}
--    end
--})
----

---- Option 4: disable all providers for all buffers
---- Not recommend, AFAIK, the ufo's providers are the best performance in Neovim
--require('ufo').setup({
--    provider_selector = function(bufnr, filetype, buftype)
--        return ''
--    end
--})

