-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank()
  end,
  group = highlight_group,
  pattern = '*',
})

-- Git Hub
vim.api.nvim_create_user_command("Lazyg", function ()
  local commit_message = vim.fn.input("Commit message: ")
  local command = string.format("git commit -am %q && git push origin dev", commit_message)
  local output = vim.fn.system(command)
  print(output)
end, {})
