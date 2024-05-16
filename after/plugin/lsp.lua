local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    lsp_zero.default_keymaps({
        buffer = bufnr,
        preserve_mappings = false
    })
end)

require('mason').setup({})
require('mason-lspconfig').setup({
    ensure_installed = {'tsserver', 'rust_analyzer', 'clangd', 'gopls'},
    handlers = {
        lsp_zero.default_setup,
    }
})

local cmp = require('cmp')

cmp.setup({
    sources = { {name = 'nvim_lsp'}, },
    mapping = cmp.mapping.preset.insert({
        ['<CR>'] = cmp.mapping.confirm({select = false}),
        ['<C-Space>'] = cmp.mapping.complete(),
    }),
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
})
