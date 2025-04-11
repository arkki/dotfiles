-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--

vim.opt.colorcolumn = "120"

vim.wo.relativenumber = true

require("custom.configs.rust")

vim.g.zig_fmt_autosave = 0
