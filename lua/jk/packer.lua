--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: packer.lua
-- Description: when you wan't to add new plugin you start here
-- Author: Josip Keresman


vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
    use("wbthomason/packer.nvim")

    use("rstacruz/vim-closer")

    use({
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        requires = { { "nvim-lua/plenary.nvim" } },
    })

    use("jkeresman01/dontuse.nvim")
    use("techtuner/aura-neovim")

    use("jkeresman01/active-files.nvim");

    use("stevearc/oil.nvim")

    use("tpope/vim-commentary")

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

    use("jkeresman01/java-maven-test.nvim")
    use("jkeresman01/java-method-search.nvim")

    use({ "folke/trouble.nvim", cmd = "Trouble" })

    use("lewis6991/gitsigns.nvim")

    use("nvim-lua/plenary.nvim")

    use("ThePrimeagen/harpoon")

    use({ "rcarriga/nvim-notify", config = function()
        require("notify").setup(
        {
            stages = "fade_in_slide_out",
        })
        vim.notify = require("notify")
    end, })

end)
