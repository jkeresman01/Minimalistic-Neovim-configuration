----------------------------------------------------------------------------
--
-- ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗
-- ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║
-- ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║╔████╔██║
-- ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╗ ██║
-- ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║
-- ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝
--
-- File: dapui.lua
-- Description: DAP UI configuration with automatic opening and closing
--              of the debugging interface during debug sessions.
-- Author: Josip Keresman
--
----------------------------------------------------------------------------

----------------------------------------------------------------------------
--
-- Requires
--
-- Load the Debug Adapter Protocol (DAP) and its UI module.
--
----------------------------------------------------------------------------
local dap, dapui = require("dap"), require("dapui")

----------------------------------------------------------------------------
--
-- Setup
--
-- Initialize the DAP UI with its default configuration.
--
----------------------------------------------------------------------------
dapui.setup()

----------------------------------------------------------------------------
--
-- Open DAP UI
--
-- after.event_initialized : Open the DAP UI when a debugging session starts.
--
----------------------------------------------------------------------------
dap.listeners.after.event_initialized["dapui"] = function()
  dapui.open()
end

----------------------------------------------------------------------------
--
-- Close DAP UI on Termination
--
-- before.event_terminated : Close the DAP UI when the debug session terminates.
--
----------------------------------------------------------------------------
dap.listeners.before.event_terminated["dapui"] = function()
  dapui.close()
end

----------------------------------------------------------------------------
--
-- Close DAP UI on Exit
--
-- before.event_exited : Close the DAP UI when the debugged process exits.
--
----------------------------------------------------------------------------
dap.listeners.before.event_exited["dapui"] = function()
  dapui.close()
end

