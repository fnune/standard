local M = {}

local highlight = function(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

M.set = function(colors, _opts)
  highlight("Normal", { fg = colors.foreground, bg = colors.background })
  highlight("ColorColumn", { fg = "NONE", bg = colors.interface.selection })
  highlight("Cursor", { fg = colors.interface.cursor, bg = colors.accent })
  highlight("CursorLine", { bg = colors.interface.selection })
  highlight("CursorColumn", { fg = "NONE", bg = colors.interface.selection })
  highlight("Directory", { fg = colors.syntax.info, bg = "NONE" })
  highlight("DiffAdd", { fg = "NONE", bg = colors.diff.add.bg })
  highlight("DiffChange", { fg = "NONE", bg = colors.diff.modify.bg })
  highlight("DiffDelete", { fg = "NONE", bg = colors.diff.delete.bg })
  highlight("DiffText", { fg = "NONE", bg = colors.diff.modify_highlight.bg })
  highlight("EndOfBuffer", { fg = colors.background, bg = "NONE" })
  highlight("ErrorMsg", { fg = colors.intent.error, bg = colors.background })
  highlight("VertSplit", { fg = colors.interface.border })
  highlight("WinSeparator", { link = "VertSplit" })
  highlight("Folded", { fg = "NONE", bg = colors.interface.border })
  highlight("FoldColumn", { fg = colors.foreground, bg = colors.background })
  highlight("SignColumn", { fg = "NONE", bg = colors.background })
  highlight("IncSearch", { fg = "NONE", bg = colors.accent })
  highlight("LineNr", { fg = colors.interface.border, bg = colors.background })
  highlight("CursorLineNr", { fg = colors.syntax.info, bg = colors.background })
  highlight("MatchParen", { fg = "NONE", bg = colors.intent.hint })
  highlight("ModeMsg", { fg = colors.foreground, bg = colors.interface.border })
  highlight("MoreMsg", { fg = colors.foreground, bg = colors.interface.border })
  highlight("NonText", { fg = colors.interface.border, bg = "NONE" })
  highlight("Pmenu", { fg = colors.foreground, bg = colors.interface.border })
  highlight("PmenuSel", { fg = "NONE", bg = colors.accent })
  highlight("PmenuSbar", { bg = colors.background })
  highlight("PmenuThumb", { fg = colors.interface.border, bg = colors.interface.border })
  highlight("Question", { fg = colors.syntax.info, bg = colors.background })
  highlight("Search", { fg = "NONE", bg = colors.accent })
  highlight("SpecialKey", { fg = colors.syntax.info, bg = "NONE" })
  highlight("StatusLine", { fg = colors.foreground, bg = colors.interface.border })
  highlight("StatusLineNC", { fg = colors.foreground, bg = colors.interface.border })
  highlight("TabLine", { fg = colors.foreground, bg = colors.interface.border })
  highlight("TabLineFill", { fg = colors.foreground, bg = colors.background })
  highlight("TabLineSel", { fg = colors.foreground, bg = colors.interface.selection })
  highlight("Title", { fg = colors.foreground, bg = "NONE", bold = true })
  highlight("Visual", { fg = "NONE", bg = colors.interface.selection })
  highlight("VisualNOS", { fg = "NONE", bg = colors.interface.selection })
  highlight("WarningMsg", { fg = colors.intent.warning, bg = colors.background, bold = true })
  highlight("WildMenu", { fg = "NONE", bg = colors.interface.selection })
  highlight("Comment", { fg = colors.syntax.comment, bg = "NONE", italic = true })
  highlight("Constant", { fg = colors.syntax.constant, bg = "NONE" })
  highlight("String", { fg = colors.syntax.string, bg = "NONE" })
  highlight("Character", { fg = colors.syntax.string, bg = "NONE" })
  highlight("Number", { fg = colors.syntax.number, bg = "NONE" })
  highlight("Boolean", { fg = colors.syntax.boolean, bg = "NONE" })
  highlight("Float", { fg = colors.syntax.number, bg = "NONE" })
  highlight("Identifier", { fg = colors.syntax.variable, bg = "NONE" })
  highlight("Function", { fg = colors.syntax.func, bg = "NONE" })
  highlight("Statement", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Conditional", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Repeat", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Label", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Operator", { fg = colors.foreground, bg = "NONE" })
  highlight("Keyword", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Exception", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("PreProc", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Include", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Define", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Macro", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("Type", { fg = colors.syntax.type, bg = "NONE" })
  highlight("StorageClass", { fg = colors.syntax.type, bg = "NONE" })
  highlight("Structure", { fg = colors.syntax.type, bg = "NONE" })
  highlight("Typedef", { fg = colors.syntax.type, bg = "NONE" })
  highlight("Special", { fg = colors.syntax.accent, bg = "NONE" })
  highlight("SpecialChar", { fg = colors.foreground, bg = "NONE" })
  highlight("Tag", { fg = colors.foreground, bg = "NONE" })
  highlight("Delimiter", { fg = colors.foreground, bg = "NONE" })
  highlight("SpecialComment", { fg = colors.syntax.comment, bg = "NONE" })
  highlight("Debug", { fg = colors.foreground, bg = "NONE" })
  highlight("Underlined", { fg = "NONE", bg = "NONE", underline = true })
  highlight("Conceal", { fg = colors.foreground, bg = colors.background })
  highlight("Ignore", { fg = colors.foreground, bg = "NONE" })
  highlight("Error", { fg = colors.intent.error, bg = colors.background, undercurl = true, sp = colors.intent.error })
  highlight("Todo", { fg = colors.intent.warning, bg = colors.background, bold = true })

  -- Spell and whitespace
  highlight("SpellBad", { fg = "NONE", undercurl = true, sp = colors.intent.error })
  highlight("SpellCap", { fg = "NONE", undercurl = true, sp = colors.intent.warning })
  highlight("SpellRare", { fg = "NONE", undercurl = true, sp = colors.intent.hint })
  highlight("SpellLocal", { fg = "NONE", undercurl = true, sp = colors.intent.info })
  highlight("Whitespace", { fg = colors.syntax.comment })

  -- Floating and window bar
  highlight("NormalFloat", { bg = colors.background })
  highlight("FloatBorder", { fg = colors.interface.border })
  highlight("WinBar", { fg = colors.foreground, bg = colors.background, bold = true })
  highlight("WinBarNc", { fg = colors.foreground, bg = colors.background })

  -- QuickFix and search
  highlight("QuickFixLine", { bold = true })

  -- Treesitter
  highlight("@error", { fg = colors.intent.error, bg = "NONE" })
  highlight("@punctuation.bracket", { fg = colors.foreground, bg = "NONE" })
  highlight("@punctuation.special", { fg = colors.foreground, bg = "NONE" })
  highlight("@punctuation.delimiter", { fg = colors.foreground, bg = "NONE" })
  highlight("@comment", { fg = colors.syntax.comment, bg = "NONE" })
  highlight("@constant", { fg = colors.syntax.constant, bg = "NONE" })
  highlight("@constant.builtin", { fg = colors.syntax.builtin, bg = "NONE" })
  highlight("@string", { fg = colors.syntax.string, bg = "NONE" })
  highlight("@character", { fg = colors.syntax.string, bg = "NONE" })
  highlight("@number", { fg = colors.syntax.number, bg = "NONE" })
  highlight("@boolean", { fg = colors.syntax.boolean, bg = "NONE" })
  highlight("@function", { fg = colors.syntax.func, bg = "NONE" })
  highlight("@variable", { fg = colors.syntax.variable, bg = "NONE" })
  highlight("@keyword", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("@type", { fg = colors.syntax.type, bg = "NONE" })

  -- Markdown
  highlight("markdownBold", { fg = colors.syntax.info, bold = true })
  highlight("markdownCode", { fg = colors.syntax.string, bg = "NONE" })
  highlight("markdownRule", { fg = colors.syntax.info, bold = true })
  highlight("markdownCodeDelimiter", { fg = colors.foreground, bg = "NONE" })
  highlight("markdownHeadingDelimiter", { fg = colors.syntax.info, bg = "NONE" })
  highlight("markdownFootnote", { fg = colors.intent.warning, bg = "NONE" })
  highlight("markdownUrl", { fg = colors.foreground, bg = "NONE", underline = true })
  highlight("markdownLinkText", { fg = colors.intent.warning })

  -- LSP semantic tokens
  highlight("@type.builtin", { fg = colors.syntax.type, bg = "NONE" })
  highlight("@lsp.type.type", { link = "@type" })
  highlight("@lsp.typemod.variable.readonly", { link = "@constant" })
  highlight("@lsp.type.keyword", { link = "@keyword" })

  -- Treesitter
  highlight("@type.qualifier", { fg = colors.intent.hint, bg = "NONE" })
  highlight("@structure", { fg = colors.syntax.variable, bg = "NONE" })
  highlight("@tag", { fg = colors.intent.hint, bg = "NONE" })
  highlight("@tag.builtin", { fg = colors.intent.hint, bg = "NONE" })
  highlight("@tag.delimiter", { fg = colors.syntax.comment, bg = "NONE" })
  highlight("@tag.attribute", { fg = colors.syntax.variable, bg = "NONE" })

  highlight("@text", { fg = colors.foreground, bg = "NONE" })
  highlight("@markup.strong", { fg = colors.intent.hint, bg = "NONE", bold = true })
  highlight("@markup.italic", { fg = colors.foreground, bg = "NONE", italic = true })
  highlight("@markup.underline", { fg = colors.intent.warning, bg = "NONE", underline = true })
  highlight("@markup.strikethrough", { fg = colors.foreground, bg = "NONE", strikethrough = true })
  highlight("@markup.heading", { fg = colors.intent.hint, bg = "NONE", bold = true })
  highlight("@markup.raw", { fg = colors.foreground, bg = "NONE" })
  highlight("@markup.raw.markdown", { fg = colors.syntax.string, bg = "NONE" })
  highlight("@markup.raw.markdown_inline", { fg = colors.syntax.string, bg = "NONE" })
  highlight("@markup.link.label", { fg = colors.syntax.variable, bg = "NONE" })
  highlight("@markup.link.url", { fg = colors.foreground, bg = "NONE" })
  highlight("@markup.list.checked", { link = "Todo" })
  highlight("@markup.list.unchecked", { link = "Todo" })
  highlight("@textReference", { fg = colors.syntax.string, bg = "NONE" })
  highlight("@stringEscape", { fg = colors.syntax.string, bg = "NONE", bold = true })

  highlight("@diff.plus", { link = "DiffAdd" })
  highlight("@diff.minus", { link = "DiffDelete" })
  highlight("@diff.delta", { link = "DiffChange" })

  -- LSP semantic tokens
  highlight("@type.builtin", { fg = colors.intent.hint, bg = "NONE" })
  highlight("@lsp.typemod.type.defaultLibrary", { link = "@type.builtin" })
  highlight("@lsp.type.type", { link = "@type" })
  highlight("@lsp.type.typeParameter", { link = "@type" })
  highlight("@lsp.type.macro", { link = "@constant" })
  highlight("@lsp.type.enumMember", { link = "@constant" })
  highlight("@lsp.typemod.variable.readonly", { link = "@constant" })
  highlight("@lsp.typemod.property.readonly", { link = "@constant" })
  highlight("@lsp.typemod.variable.constant", { link = "@constant" })
  highlight("@lsp.type.member", { link = "@function" })
  highlight("@lsp.type.keyword", { link = "@keyword" })
  highlight("@lsp.typemod.keyword.controlFlow", { fg = colors.syntax.keyword, bg = "NONE" })
  highlight("@lsp.type.comment.c", { fg = colors.syntax.comment, bg = "NONE" })
  highlight("@lsp.type.comment.cpp", { fg = colors.syntax.comment, bg = "NONE" })
  highlight("@event", { link = "Identifier" })
  highlight("@interface", { link = "Identifier" })
  highlight("@modifier", { link = "Identifier" })
  highlight("@regexp", { fg = colors.intent.error, bg = "NONE" })
  highlight("@decorator", { link = "Identifier" })

  -- LSP diagnostics
  highlight("DiagnosticOk", { fg = colors.syntax.success, bg = "NONE" })
  highlight("DiagnosticError", { fg = colors.intent.error, bg = "NONE" })
  highlight("DiagnosticWarn", { fg = colors.intent.warning, bg = "NONE" })
  highlight("DiagnosticInfo", { fg = colors.intent.hint, bg = "NONE" })
  highlight("DiagnosticHint", { fg = colors.intent.hint, bg = "NONE" })
  highlight("DiagnosticUnnecessary", { fg = colors.syntax.comment, bg = "NONE" })
  highlight("DiagnosticUnderlineError", { fg = "NONE", bg = "NONE", undercurl = true, sp = colors.intent.error })
  highlight("DiagnosticUnderlineWarn", { fg = "NONE", bg = "NONE", undercurl = true, sp = colors.intent.warning })
  highlight("DiagnosticUnderlineInfo", { fg = "NONE", bg = "NONE", undercurl = true, sp = colors.intent.hint })
  highlight("DiagnosticUnderlineHint", { fg = "NONE", bg = "NONE", undercurl = true, sp = colors.intent.hint })

  -- LSP references
  highlight("LspReferenceText", { fg = "NONE", bg = colors.interface.selection })
  highlight("LspReferenceRead", { fg = "NONE", bg = colors.interface.selection })
  highlight("LspReferenceWrite", { fg = "NONE", bg = colors.interface.selection })

  -- visual-whitespace.nvim
  highlight("VisualNonText", { fg = colors.syntax.comment, bg = colors.interface.selection })

  -- NeogitOrg/neogit
  highlight("NeogitWinSeparator", { link = "WinSeparator" })
  highlight("NeogitDiffAdd", colors.diff.add)
  highlight("NeogitDiffAddHighlight", colors.diff.add_highlight)
  highlight("NeogitDiffContext", { fg = colors.foreground, bg = colors.background })
  highlight("NeogitDiffContextHighlight", { fg = colors.foreground, bg = colors.interface.selection })
  highlight("NeogitDiffDelete", colors.diff.delete)
  highlight("NeogitDiffDeleteHighlight", colors.diff.delete_highlight)
  highlight("NeogitDiffHeader", { bg = colors.background })
  highlight("NeogitDiffHeaderHighlight", { link = "NeogitDiffHeader" })
  highlight("NeogitHunkHeader", colors.diff.modify)
  highlight("NeogitHunkHeaderHighlight", colors.diff.modify_highlight)
  highlight("NeogitCursorLine", { bg = colors.background })
  -- Cursor line highlights cause way too much distraction; rely on the
  -- pointer and regular highlight colors:
  highlight("NeogitDiffAddCursor", { link = "NeogitDiffAddHighlight" })
  highlight("NeogitDiffContextCursor", { link = "NeogitDiffContextHighlight" })
  highlight("NeogitDiffDeleteCursor", { link = "NeogitDiffDeleteHighlight" })
  highlight("NeogitHunkHeaderCursor", { link = "NeogitHunkHeaderHighlight" })

  -- Neotest
  highlight("NeotestAdapterName", { fg = colors.foreground, bold = true })
  highlight("NeotestDir", { fg = colors.intent.info })
  highlight("NeotestExpandMarker", { fg = colors.interface.border })
  highlight("NeotestFailed", { fg = colors.intent.error })
  highlight("NeotestFile", { fg = colors.intent.info })
  highlight("NeotestFocused", { bold = true })
  highlight("NeotestIndent", { fg = colors.interface.border })
  highlight("NeotestMarked", { fg = colors.intent.progress, bold = true })
  highlight("NeotestNamespace", { fg = colors.syntax.keyword })
  highlight("NeotestPassed", { fg = colors.intent.success })
  highlight("NeotestRunning", { fg = colors.intent.progress })
  highlight("NeotestSkipped", { fg = colors.intent.info })
  highlight("NeotestTarget", { fg = colors.intent.hint })
  highlight("NeotestWatching", { fg = colors.intent.progress })
  highlight("NeotestWinSelect", { fg = colors.intent.info, bold = true })
end

return M
