local M = {}

M.tokens = {
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

M.colors = {
  dark = {
    background = M.tokens.black,
    foreground = M.tokens.light_grey,
    cursor = M.tokens.blue,
    selection = M.tokens.dark_blue,
    accent = M.tokens.turquoise,
    border = M.tokens.mid_grey,
    error = M.tokens.red,
    warning = M.tokens.orange,
    info = M.tokens.light_blue,
    success = M.tokens.green,
    hint = M.tokens.purple,
  },
  light = {
    background = M.tokens.white,
    foreground = M.tokens.black,
    cursor = M.tokens.blue,
    selection = M.tokens.light_blue,
    accent = M.tokens.turquoise,
    border = M.tokens.mid_grey,
    error = M.tokens.red,
    warning = M.tokens.orange,
    info = M.tokens.dark_blue,
    success = M.tokens.green,
    hint = M.tokens.purple,
  },
}

return M
