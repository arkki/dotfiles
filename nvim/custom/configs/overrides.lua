local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev stuff
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",

    -- c/cpp stuff
    "clangd",
    "clang-format",
  },
}

-- git support in nvimtree
M.nvimtree = {
  git = {
    enable = true,
    ignore = false
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
 },
  filters = {
    dotfiles = false,
  },
}

M.cmp = {
-- vim.opt.completeopt = "menu,menuone,noselect,noinsert"
  -- preselect = cmp.PreselectMode.None,
  sources = {
     { name = "copilot" },
     { name = "nvim_lsp" },
     { name = "luasnip" },
     { name = "buffer" },
     { name = "nvim_lua" },
     { name = "path" },
     { name = "crates" },
  },
}

return M
