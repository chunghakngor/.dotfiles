-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "onenord",
  nvdash = {
    load_on_startup = true,
  },
  statusline = {
    theme = "vscode_colored",
  },
}

M.base46 = {}

return M
