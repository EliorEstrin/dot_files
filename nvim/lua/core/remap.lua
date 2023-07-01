vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Nvim tree
vim.keymap.set('n', '<C-t>', "<cmd>NvimTreeToggle<cr>", { silent = true })

-- Disable space Bar deafult funcionality
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- keymap to comment lines of code
vim.keymap.set('n', '<leader>/', function ()
 require("Comment.api").toggle.linewise.current()
end)

-- comment line in visual mode
vim.keymap.set('v', '<leader>/', "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>")

-- greatest remap ever - All Credits to Primegen :) 
vim.keymap.set("x", "<leader>p", [["_dP]])

vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })


-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })
