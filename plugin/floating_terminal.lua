----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: floating_terminal.lua
-- Description: Simple floating terminal window with a toggle command.
--
----------------------------------------------------------------------------

----------------------------------------------------------------------------
--
-- State
-- Keeps track of the floating terminal buffer and window IDs.
--
----------------------------------------------------------------------------
local state = {
  floating = {
    buf = -1,
    win = -1,
  }
}

----------------------------------------------------------------------------
--
-- Floating Window Creation
-- Creates (or reuses) a centered floating window.
--
-- @param opts table|nil
--   - width  (number) : absolute columns or nil for 80% of editor width
--   - height (number) : absolute rows    or nil for 80% of editor height
--   - buf    (number) : optional buffer to reuse
--
-- @return { buf = number, win = number }
--
----------------------------------------------------------------------------
local function create_floating_window(opts)
  opts = opts or {}

  local width  = opts.width  or math.floor(vim.o.columns * 0.8)
  local height = opts.height or math.floor(vim.o.lines   * 0.8)

  local col = math.floor((vim.o.columns - width) / 2)
  local row = math.floor((vim.o.lines   - height) / 2)

  local buf
  if opts.buf and vim.api.nvim_buf_is_valid(opts.buf) then
    buf = opts.buf
  else
    buf = vim.api.nvim_create_buf(false, true) -- [listed=false, scratch=true]
  end

  local win_config = {
    relative = "editor",
    width    = width,
    height   = height,
    col      = col,
    row      = row,
    style    = "minimal",
    border   = "rounded",
  }

  local win = vim.api.nvim_open_win(buf, true, win_config)
  return { buf = buf, win = win }
end

----------------------------------------------------------------------------
--
-- Toggle Terminal
-- Opens the floating terminal if closed; hides it if open.
--
----------------------------------------------------------------------------
local function toggle_terminal()
  if not vim.api.nvim_win_is_valid(state.floating.win) then
    state.floating = create_floating_window { buf = state.floating.buf }
    if vim.bo[state.floating.buf].buftype ~= "terminal" then
      vim.cmd.terminal()
    end
  else
    vim.api.nvim_win_hide(state.floating.win)
  end
end

----------------------------------------------------------------------------
--
-- User Command
-- :FloatingTerminal — toggle the floating terminal window.
--
----------------------------------------------------------------------------
vim.api.nvim_create_user_command("FloatingTerminal", toggle_terminal, {})

