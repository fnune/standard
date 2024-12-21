local palette = require("standard.palette")

local M = {}
local colors

if vim.o.background == "dark" then
  colors = palette.colors.dark
else
  colors = palette.colors.light
end

M.normal = {
  a = { fg = colors.foreground, bg = colors.intent.info, gui = "bold" },
  b = { fg = colors.intent.info, bg = colors.background },
  c = { fg = colors.foreground, bg = colors.background },
}

M.visual = {
  a = { fg = colors.background, bg = colors.intent.warning, gui = "bold" },
  b = { fg = colors.intent.warning, bg = colors.background },
}

M.inactive = {
  a = { fg = colors.foreground, bg = colors.background, gui = "bold" },
  b = { fg = colors.intent.disabled, bg = colors.background },
  c = { fg = colors.intent.disabled, bg = colors.background },
}

M.replace = {
  a = { fg = colors.background, bg = colors.intent.error, gui = "bold" },
  b = { fg = colors.intent.error, bg = colors.background },
  c = { fg = colors.foreground, bg = colors.background },
}

M.insert = {
  a = { fg = colors.background, bg = colors.intent.success, gui = "bold" },
  b = { fg = colors.intent.success, bg = colors.background },
  c = { fg = colors.foreground, bg = colors.background },
}

M.terminal = {
  a = { fg = colors.background, bg = colors.intent.success, gui = "bold" },
  b = { fg = colors.foreground, bg = colors.background },
  c = { fg = colors.foreground, bg = colors.background },
}

M.command = {
  a = { fg = colors.background, bg = colors.syntax.keyword, gui = "bold" },
  b = { fg = colors.syntax.keyword, bg = colors.background },
  c = { fg = colors.foreground, bg = colors.background },
}

return M
