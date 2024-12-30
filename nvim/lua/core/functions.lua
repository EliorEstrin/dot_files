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

-- Git Hub - Lazy Push
vim.api.nvim_create_user_command("Lazyg", function ()
  local commit_message = vim.fn.input("Commit message: ")
  local current_git_branch = vim.fn.system("git rev-parse --abbrev-ref HEAD")
  local command = string.format("git commit -am %q && git push origin %s", commit_message, current_git_branch)
  local output = vim.fn.system(command)
  print(output)
end, {})

--scp current file
-- vim.api.nvim_create_user_command("Scpfile", function ()
--   local remote_ip = vim.fn.input("Write the remote IP")
--   local current_git_branch = vim.fn.system("git rev-parse --abbrev-ref HEAD")
--   local command = string.format("git commit -am %q && git push origin %s", commit_message, current_git_branch)
--   local output = vim.fn.system(command)
--   print(output)
-- end, {})
