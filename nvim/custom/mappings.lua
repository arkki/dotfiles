---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<C-h>"] = {"<Cmd>NvimTmuxNavigateLeft<CR>", opts = { silent = true } },
    ["<C-l>"] = {"<Cmd>NvimTmuxNavigateRight<CR>", opts = { silent = true } },
    ["<C-k>"] = {"<Cmd>NvimTmuxNavigateUp<CR>", opts = { silent = true } },
    ["<C-j>"] = {"<Cmd>NvimTmuxNavigateDown<CR>", opts = { silent = true } },

    -- ["<C-h>"] = { "NvimTmuxNavigateLeft" },
    -- ["<C-l>"] = { "NvimTmuxNavigateRight" },
    -- ["<C-k>"] = { "NvimTmuxNavigateUp" },
    -- ["<C-j>"] = { "NvimTmuxNavigateDown" },
    -- nnoremap <silent> <C-h> <Cmd>NvimTmuxNavigateLeft<CR>
    -- nnoremap <silent> <C-j> <Cmd>NvimTmuxNavigateDown<CR>
    -- nnoremap <silent> <C-k> <Cmd>NvimTmuxNavigateUp<CR>
    -- nnoremap <silent> <C-l> <Cmd>NvimTmuxNavigateRight<CR>
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
  t = {
    ["<leader><Esc>"] = { "<C-\\><C-n>", "Exit terminal mode"},
  }
}

-- more keybinds!

M.disabled = {
    i = {
      ["<C-h>"] = "",
    }
}



return M
