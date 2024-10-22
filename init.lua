require("aryan")
require("aryan.packer")
require("autoclose").setup()
require('gitsigns').setup()
require('mini.indentscope').setup()
require('Comment').setup()

vim.api.nvim_create_autocmd("VimEnter", {
  command = "set nornu nonu | Neotree toggle",
})
vim.api.nvim_create_autocmd("BufEnter", {
  command = "set rnu nu",
})
