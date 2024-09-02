vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")

    use("rstacruz/vim-closer")

    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    use("igorgue/danger")

    -- use("yuttie/hydrangea-vim")
    -- use("techtuner/aura-neovim")

    use("nvim-lua/popup.nvim")
    use("MunifTanjim/nui.nvim")

    use("jkeresman01/tmux-switch.nvim")

    use("nvim-treesitter/playground")

    use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })

    use("tpope/vim-fugitive")

    use({
        "VonHeikemen/lsp-zero.nvim",
        branch = "v3.x",
        requires = {
            { "williamboman/mason.nvim" },
            { "williamboman/mason-lspconfig.nvim" },
            { "neovim/nvim-lspconfig" },
            { "hrsh7th/nvim-cmp" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "L3MON4D3/LuaSnip" },
        },
    })

    use({
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt = true },
    })

    use("/home/josip/git/nvim/tmux-switch.nvim")
    use("jkeresman01/java-maven-test.nvim")
    use("jkeresman01/java-method-search.nvim")
    use("/home/josip/git/nvim/java-boilerplate.nvim")

    use({ "folke/trouble.nvim", cmd = "Trouble" })

    use("lewis6991/gitsigns.nvim")

    use("nvim-lua/plenary.nvim")
    use("ThePrimeagen/harpoon")
end)
