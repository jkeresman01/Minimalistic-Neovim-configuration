----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╗ ██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: dap.lua
-- Description: Debug Adapter Protocol (DAP) keybindings for debugging
--              sessions, stepping through code, and managing breakpoints.
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

----------------------------------------------------------------------------
--
-- Requires
--
-- Load the Debug Adapter Protocol (DAP) module.
--
----------------------------------------------------------------------------
local dap = require("dap")

----------------------------------------------------------------------------
--
-- Start / Continue Debugging
--
-- <F5> : Start a debugging session or resume execution.
--
----------------------------------------------------------------------------
vim.keymap.set("n", "<F5>", dap.continue, {
  desc = "DAP: start/continue debugging",
  silent = true,
})

----------------------------------------------------------------------------
--
-- Step Over
--
-- <F1> : Execute the current line without stepping into function calls.
--
----------------------------------------------------------------------------
vim.keymap.set("n", "<F1>", dap.step_over, {
  desc = "DAP: step over",
  silent = true,
})

----------------------------------------------------------------------------
--
-- Step Into
--
-- <F2> : Enter a function call to debug its execution.
--
----------------------------------------------------------------------------
vim.keymap.set("n", "<F2>", dap.step_into, {
  desc = "DAP: step into",
  silent = true,
})

----------------------------------------------------------------------------
--
-- Step Out
--
-- <F3> : Finish executing the current function and return to its caller.
--
----------------------------------------------------------------------------
vim.keymap.set("n", "<F3>", dap.step_out, {
  desc = "DAP: step out",
  silent = true,
})

----------------------------------------------------------------------------
--
-- Breakpoints
--
-- <Leader>b : Toggle a breakpoint on the current line.
--
----------------------------------------------------------------------------
vim.keymap.set("n", "<Leader>b", dap.toggle_breakpoint, {
  desc = "DAP: toggle breakpoint",
  silent = true,
})

