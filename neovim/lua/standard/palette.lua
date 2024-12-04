local M = {}

local accessible = {
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

local lowcontrast = {
  darker_grey = "#2a2c2e",
}

M.tokens = { accessible = accessible, lowcontrast = lowcontrast }

M.colors = {
  dark = {
    background = accessible.black,
    foreground = accessible.light_grey,
    interface = {
      cursor = accessible.blue,
      selection = lowcontrast.darker_grey,
      border = lowcontrast.darker_grey,
    },
    intent = {
      error = accessible.red,
      warning = accessible.orange,
      info = accessible.light_blue,
      success = accessible.green,
      hint = accessible.blue,
    },
    syntax = {
      comment = accessible.dark_grey,
      constant = accessible.light_blue,
      builtin = accessible.blue,
      string = accessible.light_green,
      number = accessible.turquoise,
      boolean = accessible.light_purple,
      func = accessible.light_grey,
      variable = accessible.light_grey,
      keyword = accessible.pink,
      type = accessible.turquoise,
    },
  },
  light = {},
}

return M
