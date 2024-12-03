local config = require("standard.config")
local highlights = require("standard.highlights")
local palette = require("standard.palette")

local M = {}

M.setup = config.setup

M.load = function()
  vim.cmd("highlight clear")
  vim.cmd("syntax reset")

  vim.o.termguicolors = true
  vim.g.colors_name = "standard"

  local colors
  if vim.o.background == "dark" then
    colors = palette.colors.dark
  else
    colors = palette.colors.light
  end

  highlights.set(colors, config.opts)
end

return M
