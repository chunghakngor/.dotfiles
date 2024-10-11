-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  statusline = {
    theme = "vscode_colored",
  },
  telescope = {
    style = "bordered",
  },
}

M.nvdash = {
  load_on_startup = true,
}

M.base46 = {
  theme = "catppuccin",
}

return M
