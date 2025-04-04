-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "catppuccin",
  transparency = false,
  theme_toggle = {"catppuccin", "one_light"},
}

M.ui = {
  statusline = {
    theme = "default", --|values| = default, vscode, vscode_colored, minimal
    separator_style = "arrow", -- |values| = default, round, block, arrow
    order = { "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cwd", "custom", "cursor", "l", },
     modules = {
       custom = function()
         return "-> ProfShibe "
       end,

       l = "%L lines",
     }
  },
}


M.nvdash = {
    load_on_startup = true,
}

M.colorify = {
  enabled = true,
  mode = "virtual",
  highlight = { hex = true, lspvars = true},
  virt_text = "▆",
}

return M
