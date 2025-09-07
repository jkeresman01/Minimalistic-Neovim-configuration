----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: lsp.lua
-- Description: LSP setup and keymaps (a bunch of nonsense that works)
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

----------------------------------------------------------------------------
--
-- lsp-zero: on_attach + default keymaps
--
----------------------------------------------------------------------------
local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(bufnr)
  lsp_zero.default_keymaps({
    buffer = bufnr,
    preserve_mappings = false,
  })

  local opts = { noremap = true, silent = true, buffer = bufnr }

  vim.keymap.set("n", "K",         vim.lsp.buf.hover,           opts) -- hover docs
  vim.keymap.set("n", "gd",        vim.lsp.buf.definition,      opts) -- go to definition
  vim.keymap.set("n", "gr",        vim.lsp.buf.references,      opts) -- references
  vim.keymap.set("n", "gD",        vim.lsp.buf.declaration,     opts) -- declaration
  vim.keymap.set("n", "gi",        vim.lsp.buf.implementation,  opts) -- implementation
  vim.keymap.set("n", "<leader>ca",vim.lsp.buf.code_action,     opts) -- code action
  vim.keymap.set("n", "<leader>rn",vim.lsp.buf.rename,          opts) -- rename
end)

----------------------------------------------------------------------------
--
-- Mason + mason-lspconfig
-- Ensure core servers are available and let lsp-zero wire them up.
--
----------------------------------------------------------------------------
require("mason").setup({})
require("mason-lspconfig").setup({
  ensure_installed = {
    "rust_analyzer",
    "clangd",
    "gopls",
    "omnisharp",
    "erlangls",
    "elixirls",
  },
  handlers = { lsp_zero.default_setup },
})

----------------------------------------------------------------------------
--
-- nvim-cmp (completion)
--
----------------------------------------------------------------------------
local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },

  sources = {
    { name = "nvim_lsp" },
    { name = "luasnip"  },
    { name = "buffer"   },
    { name = "path"     },
  },

  mapping = cmp.mapping.preset.insert({
    ["<CR>"]   = cmp.mapping.confirm({ select = false }),
    ["<Tab>"]  = cmp.mapping.select_next_item(),
    ["<S-Tab>"]= cmp.mapping.select_prev_item(),
  }),
})

----------------------------------------------------------------------------
--
-- Capabilities shared by all servers (for nvim-cmp, etc.)
--
----------------------------------------------------------------------------
local capabilities = require("cmp_nvim_lsp").default_capabilities()

----------------------------------------------------------------------------
--
-- Server: rust_analyzer
---
----------------------------------------------------------------------------
require("lspconfig").rust_analyzer.setup({
  capabilities = capabilities,
  on_attach = lsp_zero.on_attach,
})

----------------------------------------------------------------------------
--
-- Server: clangd
---
----------------------------------------------------------------------------
require("lspconfig").clangd.setup({
  capabilities = capabilities,
  on_attach = lsp_zero.on_attach,
})

----------------------------------------------------------------------------
--
-- Server: gopls
---
----------------------------------------------------------------------------
require("lspconfig").gopls.setup({
  capabilities = capabilities,
  on_attach = lsp_zero.on_attach,
})

----------------------------------------------------------------------------
--
-- Server: omnisharp
---
----------------------------------------------------------------------------
require("lspconfig").omnisharp.setup({
  capabilities = capabilities,
  on_attach = lsp_zero.on_attach,
})

----------------------------------------------------------------------------
--
-- Server: erlangls (Erlang)
---
----------------------------------------------------------------------------
require("lspconfig").erlangls.setup({
  capabilities = capabilities,
  on_attach = lsp_zero.on_attach,
})

----------------------------------------------------------------------------
--
-- Server: elixirls (Elixir)
---
----------------------------------------------------------------------------
require("lspconfig").elixirls.setup({
  capabilities = capabilities,
  on_attach = lsp_zero.on_attach,
})
