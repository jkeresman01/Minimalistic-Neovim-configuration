----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: treesitter.lua
-- Description: Treesitter config (syntax highlighting and parsing).
--              Usually written by people who smoke to much weed.
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

----------------------------------------------------------------------------
--
-- Setup
--
-- Core Treesitter configuration: parsers, install behavior, highlighting.
--
----------------------------------------------------------------------------
require("nvim-treesitter.configs").setup({
  --------------------------------------------------------------------------
  --
  -- Parsers
  --
  -- Add or remove languages as needed.
  --
  --------------------------------------------------------------------------
  ensure_installed = {
      "java",
      "rust",
      "cpp",
      "erlang",
      "elixir",
      "c",
      "lua",
      "vim",
      "vimdoc",
      "query"
  },

  --------------------------------------------------------------------------
  --
  -- Install Behavior
  --
  --------------------------------------------------------------------------
  sync_install  = false,  -- install parsers asynchronously
  auto_install  = true,   -- auto-install missing parsers on buffer enter

  --------------------------------------------------------------------------
  --
  -- Highlight
  --
  -- Treesitter-based syntax highlighting.
  --
  --------------------------------------------------------------------------
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },

  -- ------------------------------------------------------------------------
  --
  -- Incremental Selection (optional)
  -- Uncomment and adjust keymaps to enable.
  --
  -- ------------------------------------------------------------------------
  -- incremental_selection = {
  --   enable = true,
  --   keymaps = {
  --     init_selection = "gnn",
  --     node_incremental = "grn",
  --     scope_incremental = "grc",
  --     node_decremental = "grm",
  --   },
  -- },

  -- ------------------------------------------------------------------------
  -- 
  -- Indentation (optional; can be wonky for some langs)
  --
  -- ------------------------------------------------------------------------
  -- indent = {
  --   enable = true,
  -- },
})

