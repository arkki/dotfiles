---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true }},
    ["<C-h>"] = {"<Cmd>NvimTmuxNavigateLeft<CR>", opts = { silent = true }},
    ["<C-l>"] = {"<Cmd>NvimTmuxNavigateRight<CR>", opts = { silent = true }},
    ["<C-k>"] = {"<Cmd>NvimTmuxNavigateUp<CR>", opts = { silent = true }},
    ["<C-j>"] = {"<Cmd>NvimTmuxNavigateDown<CR>", opts = { silent = true }},

    ["<C-Left>"] = {"<Cmd>NvimTmuxNavigateLeft<CR>", opts = { silent = true }},
    ["<C-Reght>"] = {"<Cmd>NvimTmuxNavigateRight<CR>", opts = { silent = true }},
    ["<C-Up>"] = {"<Cmd>NvimTmuxNavigateUp<CR>", opts = { silent = true }},
    ["<C-Down>"] = {"<Cmd>NvimTmuxNavigateDown<CR>", opts = { silent = true }},


    ["<D-s>"] = {"<CMD>w<CR><ESC>", "Save file" },
    ["<leader>s"] = {"<CMD>w<CR><ESC>", "Save file" },

    ["<leader>js"] = {"<CMD>w !node<CR>", "Run buffer in node"},
    -- ["<C-h>"] = { "NvimTmuxNavigateLeft" },
    -- ["<C-l>"] = { "NvimTmuxNavigateRight" },
    -- ["<C-k>"] = { "NvimTmuxNavigateUp" }
    -- ["<C-j>"] = { "NvimTmuxNavigateDown" },
    -- nnoremap <silent> <C-h> <Cmd>NvimTmuxNavigateLeft<CR>
    -- nnoremap <silent> <C-j> <Cmd>NvimTmuxNavigateDown<CR>
    -- nnoremap <silent> <C-k> <Cmd>NvimTmuxNavigateUp<CR>
    -- nnoremap <silent> <C-l> <Cmd>NvimTmuxNavigateRight<CR>
    -- ["<leader>a"] = {"<Cmd>RustLsp codeAction<CR>", "Rust Code Action", opts = { silent = true }},
  },
  v = {
    [">"] = { ">gv", "indent"},
    ["<"] = { "<gv", "unindent"},
    ["<leader>js"] = {"<ESC>gv<CMD>'<,'>w !node<CR>", "Run selection in node", opts = { silent = true }},

  },
  t = {
    ["<leader><Esc>"] = { "<C-\\><C-n>", "Exit terminal mode"},
  },
  i = {
    ["<C-Enter>"] = {"copilot#Accept('<CR>')", opts = { noremap = true, silent = true, expr = true, replace_keycodes = false }},
    -- ["<C-Enter>"] = {"copilot#Accept('<CR>')", opts = { silent = true }},
  }
}

-- more keybinds!

M.disabled = {
    i = {
      ["<C-h>"] = "",
    }
}



return M
