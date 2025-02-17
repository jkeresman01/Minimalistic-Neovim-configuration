--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: lsp.lua
-- Description: LSP specific stuff
-- Author: Josip Keresman

local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(bufnr)
    lsp_zero.default_keymaps({
        buffer = bufnr,
        preserve_mappings = false,
    })

    local opts = { noremap=true, silent=true, buffer=bufnr }

    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
end)

require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = {"rust_analyzer", "clangd", "gopls", "omnisharp"},
    handlers = { lsp_zero.default_setup },
})

local cmp = require("cmp")
local lspkind = require("lspkind")

cmp.setup({
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },

    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
        { name = "path" }
    },

    mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    }),

    formatting = {
        format = lspkind.cmp_format({
            mode = "symbol_text",
            maxwidth = 50,
            ellipsis_char = "...",
        }),
    },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("lspconfig").rust_analyzer.setup({
    capabilities = capabilities,
    on_attach = lsp_zero.on_attach,
})

require("lspconfig").clangd.setup({
    capabilities = capabilities,
    on_attach = lsp_zero.on_attach,
})

require("lspconfig").gopls.setup({
    capabilities = capabilities,
    on_attach = lsp_zero.on_attach,
})

require("lspconfig").omnisharp.setup({
    capabilities = capabilities,
    on_attach = lsp_zero.on_attach,
})

