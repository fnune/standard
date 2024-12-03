local M = {}

local highlight = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

M.set = function(colors, _opts)
  highlight("Normal", { fg = colors.foreground, bg = colors.background })
  highlight("CursorLine", { bg = colors.selection })
  highlight("Visual", { bg = colors.selection })
  highlight("Error", { fg = colors.error })
  highlight("Warning", { fg = colors.warning })
  highlight("Info", { fg = colors.info })
  highlight("Hint", { fg = colors.hint })

  highlight("Comment", { fg = colors.border })
  highlight("String", { fg = colors.success })
  highlight("Function", { fg = colors.accent, bold = true })
  highlight("Keyword", { fg = colors.accent, bold = true })
  highlight("Type", { fg = colors.hint, bold = true })
  highlight("Variable", { fg = colors.foreground })

  highlight("TSComment", { link = "Comment" })
  highlight("TSString", { link = "String" })
  highlight("TSFunction", { link = "Function" })
  highlight("TSKeyword", { link = "Keyword" })
  highlight("TSType", { link = "Type" })
  highlight("TSVariable", { link = "Variable" })
end

return M
