local M = {}

local T = {
  red = "#d4351c",
  yellow = "#ffdd00",
  green = "#00703c",
  blue = "#1d70b8",
  dark_blue = "#003078",
  light_blue = "#5694ca",
  purple = "#4c2c92",
  black = "#0b0c0c",
  dark_grey = "#505a5f",
  mid_grey = "#b1b4b6",
  light_grey = "#f3f2f1",
  white = "#ffffff",
  light_purple = "#6f72af",
  bright_purple = "#912b88",
  pink = "#d53880",
  light_pink = "#f499be",
  orange = "#f47738",
  brown = "#b58840",
  light_green = "#85994b",
  turquoise = "#28a197",
}

M.tokens = T

M.colors = {
  dark = {
    interface = {
      background = T.black,
      foreground = T.light_grey,
      cursor = T.blue,
      selection = T.dark_grey,
      border = T.mid_grey,
    },
    intent = {
      error = T.red,
      warning = T.orange,
      info = T.light_blue,
      success = T.green,
      hint = T.blue,
    },
    syntax = {
      comment = T.dark_grey,
      constant = T.light_blue,
      builtin = T.blue,
      string = T.light_green,
      number = T.turquoise,
      boolean = T.light_purple,
      func = T.light_grey,
      variable = T.light_grey,
      keyword = T.pink,
      type = T.turquoise,
    },
  },
  light = {},
}

return M
