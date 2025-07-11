---@type ColorScheme
local M = { tokens = {}, colors = {} }

---@type Colors
local govuk = {
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

---@type LowContrastColors
local lowcontrast = {
  dark_green = "#293f1a",
  dark_red = "#6a3532",
  dark_yellow = "#6a5a2a",
  darker_green = "#1d2d13",
  darker_grey = "#2a2c2e",
  darker_red = "#452f2f",
  darker_yellow = "#35311b",
  darkest_grey = "#1d1f1f",
}

M.tokens = vim.tbl_deep_extend("force", lowcontrast, govuk)

---@type { dark: ThemeColors, light: ThemeColors }
M.colors = {
  dark = {
    background = govuk.black,
    foreground = govuk.light_grey,
    interface = {
      border = lowcontrast.darker_grey,
      border_highlight = govuk.dark_grey,
      current = lowcontrast.dark_yellow,
      cursorline = lowcontrast.darkest_grey,
      match = govuk.light_blue,
      search = lowcontrast.darker_yellow,
      selection = lowcontrast.darker_yellow,
      selection_highlight = lowcontrast.dark_yellow,
    },
    intent = {
      disabled = govuk.dark_grey,
      error = govuk.red,
      hint = govuk.light_blue,
      info = govuk.light_blue,
      progress = govuk.yellow,
      success = govuk.light_green,
      warning = govuk.orange,
    },
    diff = {
      add = { fg = govuk.light_green, bg = lowcontrast.darker_green },
      add_highlight = { fg = govuk.light_green, bg = lowcontrast.dark_green },
      delete = { fg = govuk.light_red, bg = lowcontrast.darker_red },
      delete_highlight = { fg = govuk.light_red, bg = lowcontrast.dark_red },
      modify = { fg = govuk.light_yellow, bg = lowcontrast.darker_yellow },
      modify_highlight = { fg = govuk.light_yellow, bg = lowcontrast.dark_yellow },
    },
    syntax = {
      boolean = govuk.light_purple,
      builtin = govuk.blue,
      comment = govuk.dark_grey,
      constant = govuk.light_purple,
      decorator = govuk.mid_grey,
      delimiter = govuk.dark_grey,
      func = govuk.light_blue,
      key = govuk.light_blue,
      keyword = govuk.pink,
      number = govuk.light_purple,
      operator = govuk.pink,
      path = govuk.green,
      property = govuk.mid_grey,
      punctuation = govuk.mid_grey,
      regexp = govuk.brown,
      ret = govuk.bright_purple,
      string = govuk.light_green,
      tag = govuk.light_blue,
      type = govuk.turquoise,
      variable = govuk.light_grey,
    },
    markup = {
      code = govuk.light_green,
      heading = govuk.light_purple,
      href = govuk.blue,
      link = govuk.light_blue,
    },
  },
  light = {
    background = "#eeeded",
    foreground = "#000000",
    interface = {
      border = "#d6d3d3",
      border_highlight = govuk.mid_grey,
      current = govuk.yellow,
      cursorline = "#d6d3d3",
      match = govuk.blue,
      search = govuk.light_yellow,
      selection = govuk.light_yellow,
      selection_highlight = govuk.yellow,
    },
    intent = {
      disabled = "#9e9fa1",
      error = govuk.red,
      hint = govuk.blue,
      info = govuk.blue,
      progress = govuk.yellow,
      success = govuk.light_green,
      warning = govuk.orange,
    },
    diff = {
      add = { fg = lowcontrast.darker_green, bg = govuk.light_green },
      add_highlight = { fg = lowcontrast.dark_green, bg = govuk.light_green },
      delete = { fg = lowcontrast.darker_red, bg = govuk.light_red },
      delete_highlight = { fg = lowcontrast.dark_red, bg = govuk.light_red },
      modify = { fg = lowcontrast.darker_yellow, bg = govuk.light_yellow },
      modify_highlight = { fg = lowcontrast.dark_yellow, bg = govuk.light_yellow },
    },
    syntax = {
      boolean = govuk.purple,
      builtin = govuk.dark_blue,
      comment = "#a19d9d",
      constant = govuk.purple,
      decorator = lowcontrast.darker_grey,
      delimiter = govuk.dark_grey,
      func = govuk.blue,
      key = govuk.light_blue,
      keyword = govuk.bright_purple,
      number = govuk.purple,
      operator = govuk.bright_purple,
      path = govuk.green,
      property = govuk.mid_grey,
      punctuation = lowcontrast.darker_grey,
      regexp = govuk.brown,
      ret = govuk.bright_purple,
      string = govuk.light_green,
      tag = govuk.blue,
      type = govuk.turquoise,
      variable = govuk.black,
    },
    markup = {
      code = govuk.light_green,
      heading = govuk.purple,
      href = govuk.dark_blue,
      link = govuk.blue,
    },
  },
}

return M
