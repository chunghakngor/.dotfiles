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
  header = {
    "+---------------------------------------------------------------------------------------+",
    "|                                                                                       |",
    "|   oooo   oooo              oooooooo8 oooo                                             |",
    "|    8888o  88 oooo   oooo o888     88  888ooooo oooo  oooo  oo oooooo     oooooooo8    |",
    "|    88 888o88  888   888  888          888   888 888   888   888   888  888    88o     |",
    "|    88   8888   888 888   888o     oo  888   888 888   888   888   888   888oo888o     |",
    "|   o88o    88     888      888oooo88  o888o o888o 888o88 8o o888o o888o 888     888    |",
    "|                                                                         888ooo888     |",
    "|                                                                                       |",
    "|                                  Powered By eovim                                   |",
    "|                                                                                       |",
    "+---------------------------------------------------------------------------------------+",
    "                                                                                         ",
    "                                                                                         ",
  },
}

M.base46 = {
  theme = "catppuccin",
}

return M
