local conform = require("conform")

conform.setup({
   formatters_by_ft = {
   lua = { "stylua" },
   python = { "pyink" },
   cpp = { "clang_format" }
   }
})

vim.keymap.set({ "n", "v" }, "<Leader>fo", function()
   conform.format({
      lsp_fallback = true,
      async = false,
      timeout_ms = 500,
   })
end)
