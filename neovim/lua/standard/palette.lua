local M = {}

local accessible = {
  black = "#0b0c0c",
  blue = "#1d70b8",
  bright_purple = "#912b88",
  brown = "#b58840",
  dark_blue = "#003078",
  dark_grey = "#505a5f",
  green = "#00703c",
  light_blue = "#5694ca",
  light_green = "#85994b",
  light_grey = "#f3f2f1",
  light_pink = "#f499be",
  light_purple = "#6f72af",
  light_red = "#e28f84",
  light_yellow = "#fff4c2",
  mid_grey = "#b1b4b6",
  orange = "#f47738",
  pink = "#d53880",
  purple = "#4c2c92",
  red = "#d4351c",
  turquoise = "#28a197",
  white = "#ffffff",
  yellow = "#ffdd00",
}

local lowcontrast = {
  dark_red = "#5a2d2a",
  darker_red = "#452f2f",
  dark_green = "#0f5a3c",
  darker_green = "#1f4531",
  dark_yellow = "#5a4a22",
  darker_yellow = "#4a4426",
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
    diff = {
      add = { fg = accessible.light_green, bg = lowcontrast.darker_green },
      add_highlight = { fg = accessible.light_green, bg = lowcontrast.dark_green },
      delete = { fg = accessible.light_red, bg = lowcontrast.darker_red },
      delete_highlight = { fg = accessible.light_red, bg = lowcontrast.dark_red },
      modify = { fg = accessible.light_yellow, bg = lowcontrast.darker_yellow },
      modify_highlight = { fg = accessible.light_yellow, bg = lowcontrast.dark_yellow },
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
