--event = {
--   "BufReadpre",
--   "BufNewFile",
--}
--
--require('lint').linters_by_ft = {
--   python = ('pylint'),
--   cpp = ('cpplint')
--}
--
--vim.api.nvim_create_autocmd({ BufReadpre, BufNewFile}, {
--   callback = function ()
--      require("lint").try_lint()
--   end,
--})
