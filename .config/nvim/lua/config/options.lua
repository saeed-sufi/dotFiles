-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- vim.opt.winbar = "%=%m %f"
vim.opt.wrap = true
vim.opt.number = true -- Disable absolute line numbers
vim.opt.relativenumber = true -- Disable relative line numbers
vim.opt.title = true
vim.opt.titlelen = 85
-- terminal title bar starts with the root of project dir name
vim.opt.titlestring = '%{fnamemodify(getcwd(), ":t")}/%{fnamemodify(expand("%:p"), ":.:r")}%{expand("%:e") == "" ? "" : "." .. expand("%:e")} [%{mode()}]'
vim.keymap.set("n", "x", '"_x')
vim.keymap.set("n", "c", '"_c')
vim.keymap.set("n", "dd", function()
  if vim.fn.getline(".") == "" then
    return '"_dd'
  end
  return "dd"
end, { expr = true })

vim.diagnostic.config({ virtual_text = false })
vim.opt.clipboard = "unnamedplus"
