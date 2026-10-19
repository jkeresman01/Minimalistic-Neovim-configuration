----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: calendar.lua
-- Description: Simple calendar nonsense
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

require('calendar').setup({
  mark_icon = '•',
  locale = 'en-US',
  show_adjacent_days = true,
  keymap = {
    next_month = 'L',
    previous_month = 'H',
    next_day = 'l',
    previous_day = 'h',
    next_week = 'j',
    previous_week = 'k',
    today = 't',
    close = 'q',
  },
  highlights = {
    current = 'Visual',
    today = 'Todo',
    mark = 'Todo',
    adjacent_days = 'Comment',
  },
  locales = {}
})

----------------------------------------------------------------------------
--
-- Keymaps
--
-- <leader>ac  : Open calendar
--
----------------------------------------------------------------------------
 vim.keymap.set("n", "<leader>ac", "<cmd>Calendar<cr>", { silent = true, desc = 'open calendar' })

