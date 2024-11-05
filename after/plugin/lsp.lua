local lsp_zero = require("lsp-zero")

lsp_zero.on_attach(function(bufnr)
    lsp_zero.default_keymaps({
        buffer = bufnr,
        preserve_mappings = false,
    })

    local opts = { noremap=true, silent=true, buffer=bufnr }

    vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gr", "<Cmd>lua vim.lsp.buf.references()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gD", "<Cmd>lua vim.lsp.buf.declaration()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "gi", "<Cmd>lua vim.lsp.buf.implementation()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rn", "<Cmd>lua vim.lsp.buf.rename()<CR>", opts)
end)

require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = {"rust_analyzer", "clangd", "gopls" , "omnisharp" },
    handlers = { lsp_zero.default_setup },
})

local cmp = require("cmp")

cmp.setup({
    sources = { { name = "nvim_lsp" } },
    mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = false }),
    }),
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
})
