local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.flake8,
    },
})

vim.keymap.set("n", "<leader>l", ":lua require('null-ls').toggle('flake8')<CR>")
