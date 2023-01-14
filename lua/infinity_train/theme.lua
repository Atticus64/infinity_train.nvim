local colors = require("infinity_train.colors")
local hl = vim.api.nvim_set_hl
local M = {}

M.set_highlights = function(color)
	local c
	if color == "dark" then
		c = colors.dark
	elseif color == "light" then
		c = colors.light
	end
	--------------------------------------------------------
	----- Editor -------------------------------------------
	--------------------------------------------------------

	-- Normal
	hl(0, "Normal", { fg = c.fg, bg = c.bg })
	hl(0, "NormalNC", { fg = c.info, bg = c.bg })
	hl(0, "NormalFloat", { fg = 'NONE', bg = c.alt })

	-- Message
	hl(0, "MsgArea", { fg = c.info, bg = c.bg })
	hl(0, "MsgSeparator", { fg = c.info, bg = c.bg })

	hl(0, "ModeMsg", { fg = c.info, bg = c.alt })
	hl(0, "ErrorMsg", { fg = c.err, bg = c.bg, bold = true, })
	hl(0, "WarningMsg", { fg = c.err, bg = c.bg })

	-- Sign
	hl(0, "SignColumn", { fg = c.preproc, bg = c.bg })

	-- Spell
	hl(0, "SpellBad", { fg = 'NONE', bg = 'NONE', sp = c.err, undercurl = true, })
	hl(0, "SpellCap", { fg = 'NONE', bg = 'NONE', sp = c.err, undercurl = true, })
	hl(0, "SpellLocal", { fg = 'NONE', bg = 'NONE', sp = c.err, underline = true, })
	hl(0, "SpellRare", { fg = 'NONE', bg = 'NONE', sp = c.err, underline = true, })

	-- Pmenu
	hl(0, "Pmenu", { fg = c.info, bg = c.alt })
	hl(0, "PmenuSel", { fg = c.bg, bg = c.preproc })
	hl(0, "PmenuSbar", { fg = 'NONE', bg = c.alt })
	hl(0, "PmenuThumb", { fg = 'NONE', bg = c.info })

	-- Folded
	hl(0, "Folded", { fg = c.column, bg = c.alt })
	hl(0, "FoldColumn", { fg = c.column, bg = c.alt })

	-- Cursor
	hl(0, "CursorLine", { fg = 'NONE', bg = c.alt })
	hl(0, "ColorColumn", { fg = 'NONE', bg = c.alt })
	hl(0, "CursorColumn", { fg = 'NONE', bg = c.alt })
	hl(0, "CursorLineNr", { fg = c.cursor, bg = 'NONE', bold = true, })
	hl(0, "Cursor", { fg = c.cursor, bg = c.cursor })
	hl(0, "lCursor", { fg = c.cursor, bg = c.cursor })
	hl(0, "CursorIM", { fg = c.cursor, bg = c.cursor })
	hl(0, "TermCursor", { fg = c.cursor, bg = c.cursor })
	hl(0, "TermCursorNC", { fg = c.cursor, bg = c.cursor })

	-- Visual
	hl(0, "Visual", { fg = 'NONE', bg = c.selection })
	hl(0, "VisualNOS", { fg = 'NONE', bg = c.alt })

	-- Diff
	hl(0, "DiffText", { fg = c.alt, bg = '#c2c2c2' })
	hl(0, "DiffAdd", { fg = c.alt, bg = c.preproc })
	hl(0, "DiffDelete", { fg = c.alt, bg = c.preproc })
	hl(0, "DiffChange", { fg = c.alt, bg = c.preproc, underline = true, })

	-- Match
	hl(0, "MatchWord", { fg = 'NONE', bg = 'NONE', underline = true, })
	hl(0, "MatchParen", { fg = c.constant, bg = 'NONE', underline = true, })
	hl(0, "MatchWordCur", { fg = 'NONE', bg = 'NONE', underline = true, })
	hl(0, "MatchParenCur", { fg = 'NONE', bg = 'NONE', underline = true, })

	-- Miscellaneous
	hl(0, "LineNr", { fg = c.column, bg = 'NONE' })
	hl(0, "Conceal", { fg = c.column, bg = 'NONE' })
	hl(0, "WildMenu", { fg = c.info, bg = c.preproc })
	hl(0, "Directory", { fg = c.info, bg = 'NONE' })
	hl(0, "VertSplit", { fg = c.alt, bg = c.bg })
	hl(0, "QkFixLine", { fg = 'NONE', bg = c.preproc })
	hl(0, "FloatBoder", { fg = c.hint, bg = c.alt })
	hl(0, "Whitespace", { fg = c.bg, bg = 'NONE' })
	hl(0, "SpecialKey", { fg = c.preproc, bg = 'NONE', bold = true, })

	--------------------------------------------------------
	----- search and change --------------------------------
	--------------------------------------------------------

	-- Search
	hl(0, "Search", { fg = c.bg, bg = '#c2c2c2' })
	hl(0, "IncSearch", { fg = c.bg, bg = c.hint })
	hl(0, "Substitute", { fg = c.bg, bg = c.hint })

	-- Tabline
	hl(0, "TabLine", { fg = c.fg, bg = c.bg })
	hl(0, "TabLineSel", { fg = c.info, bg = c.bg })
	hl(0, "TabLineFill", { fg = c.bg, bg = c.bg })

	-- Miscellaneous
	hl(0, "NonText", { fg = c.bg, bg = 'NONE' })
	hl(0, "MoreMsg", { fg = c.hint, bg = 'NONE' })
	hl(0, "Question", { fg = c.hint, bg = 'NONE' })
	hl(0, "EndOfBuffer", { fg = c.bg, bg = 'NONE' })

	--------------------------------------------------------
	----- Code ---------------------------------------------
	--------------------------------------------------------

	hl(0, "cLabel", { fg = c.var, bg = 'NONE' })
	hl(0, "cBlock", { fg = c.var, bg = 'NONE' })

	hl(0, "Comment", { fg = c.comment, bg = 'NONE' })
	hl(0, "Variable", { fg = c.var, bg = 'NONE' })
	hl(0, "String", { fg = c.string, bg = 'NONE' })
	hl(0, "Character", { fg = c.string, bg = 'NONE' })
	hl(0, "Number", { fg = c.num, bg = 'NONE' })
	hl(0, "Float", { fg = c.num, bg = 'none' })

	hl(0, "boolean", { fg = c.boolean, bg = 'none' })
	hl(0, "constant", { fg = c.constant, bg = 'none' })
	hl(0, "type", { fg = c.type, bg = 'none' })

	hl(0, "function", { fg = c.fn, bg = 'none' })
	hl(0, "keyword", { fg = c.keyword, bg = 'none' })
	hl(0, "conditional", { fg = c.var, bg = 'none' })
	hl(0, "repeat", { fg = c.var, bg = 'none' })
	hl(0, "operator", { fg = c.opt, bg = 'NONE' })
	hl(0, "PreProc", { fg = c.preproc, bg = 'NONE' })
	hl(0, "Include", { fg = c.imports, bg = 'NONE' })
	hl(0, "Exception", { fg = c.var, bg = 'NONE' })
	hl(0, "StorageClass", { fg = c.var, bg = 'NONE' })
	hl(0, "Structure", { fg = c.structures, bg = 'NONE' })
	hl(0, "Typedef", { fg = c.preproc, bg = 'NONE' })
	hl(0, "Define", { fg = c.preproc, bg = 'NONE' })
	hl(0, "Macro", { fg = c.preproc, bg = 'NONE' })
	hl(0, "Debug", { fg = c.err, bg = 'NONE' })
	hl(0, "Title", { fg = c.preproc, bg = 'NONE', bold = true, })
	hl(0, "Label", { fg = c.info, bg = 'NONE' })
	hl(0, "SpecialChar", { fg = c.preproc, bg = 'NONE' })
	hl(0, "Delimiter", { fg = c.gray, bg = 'NONE' })
	hl(0, "Tag", { fg = c.preproc, bg = 'NONE' })
	hl(0, "Bold", { fg = 'NONE', bg = 'NONE', bold = true, })
	hl(0, "Italic", { fg = 'NONE', bg = 'NONE', italic = true, })
	hl(0, "Underlined", { fg = 'NONE', bg = 'NONE', underline = true, })
	hl(0, "Ignore", { fg = c.preproc, bg = 'NONE', bold = true, })
	hl(0, "Todo", { fg = c.preproc, bg = 'NONE', bold = true, })
	hl(0, "Error", { fg = c.err, bg = 'NONE', bold = true, })
	hl(0, "Statement", { fg = c.preproc, bg = 'NONE' })
	hl(0, "Identifier", { fg = c.identifier, bg = 'NONE' })
	hl(0, "PreCondit", { fg = c.preproc, bg = 'NONE' })
	hl(0, "Special", { fg = c.special, bg = 'NONE' })
	hl(0, "SpecialComment", { fg = c.info, bg = 'NONE' })

	--------------------------------------------------------
	----- Treesitter ---------------------------------------
	--------------------------------------------------------

	hl(0, "TSComment", { link = 'Comment' })
	hl(0, "@parameter", { fg = c.parameter, bg = 'None' })
	hl(0, "@attribute", { fg = c.property, bg = 'None' })
	hl(0, "@field", { fg = c.property, bg = 'None' })
	hl(0, "@property", { fg = c.property, bg = 'None' })
	hl(0, "TSVariable", { link = 'Variable' })
	hl(0, "TSString", { link = 'String' })
	hl(0, "TSStringRegex", { link = 'String' })
	hl(0, "TSStringEscape", { link = 'String' })
	hl(0, "TSCharacter", { link = 'String' })
	hl(0, "TSCharacterSpecial", { link = 'SpecialChar' })
	hl(0, "TSNumber", { link = 'Number' })
	hl(0, "TSFloat", { link = 'Float' })
	hl(0, "TSBoolean", { link = 'Boolean' })
	hl(0, "TSConstant", { link = 'Constant' })
	hl(0, "TSConstBtin", { link = 'Constant' })
	hl(0, "TSConstructor", { link = 'Type' })
	hl(0, "TSType", { link = 'Type' })
	hl(0, "TSInclude", { link = 'Include' })
	hl(0, "TSException", { link = 'Exception' })
	hl(0, "TSKeyword", { link = 'Keyword' })
	hl(0, "TSKeywordReturn", { link = 'Keyword' })
	hl(0, "TSKeywordOperator", { link = 'Keyword' })
	hl(0, "TSKeywordFunction", { link = 'Keyword' })
	hl(0, "TSFunction", { fg = c.fn, bg = 'None' })
	hl(0, "TSFuncBtin", { fg = c.fn, bg = 'None' })
	hl(0, "TSMethod", { fg = c.fn, bg = 'None' })
	hl(0, "TSFuncMacro", { fg = c.fn, bg = 'None' })
	hl(0, "TSConditional", { link = 'Conditional' })
	hl(0, "TSRepeat", { link = 'Repeat' })
	hl(0, "TSOperator", { link = 'Operator' })
	hl(0, "TSPreProc", { link = 'PreProc' })
	hl(0, "TSStorageClass", { link = 'StorageClass' })
	hl(0, "TSStructure", { link = 'Structure' })
	hl(0, "TSTypeDefinition", { link = 'Typedef' })
	hl(0, "TSDefine", { link = 'Define' })
	hl(0, "TSNote", { link = 'Comment' })
	hl(0, "TSTodo", { link = 'Todo' })
	hl(0, "TSDebug", { link = 'Debug' })
	hl(0, "TSDanger", { link = 'Error' })
	hl(0, "TSTitle", { link = 'Title' })
	hl(0, "TSLabel", { link = 'Label' })
	hl(0, "TSPunctDelimiter", { link = 'Delimiter' })
	hl(0, "TSTagDelimiter", { link = 'Delimiter' })
	hl(0, "TSPunctBracket", { fg = c.braces, bg = 'NONE' })
	hl(0, "TSPunctSpecial", { fg = c.braces, bg = 'NONE' })
	hl(0, "TSTag", { link = 'Tag' })
	hl(0, "TSStrong", { link = 'Bold' })
	hl(0, "TSEmphasis", { link = 'Italic' })
	hl(0, "TSUnderline", { link = 'Underline' })
	hl(0, "TSStrike", { fg = 'NONE', bg = 'NONE', strikethrough = true, })
	hl(0, "TSStringSpecial", { fg = c.info, bg = 'NONE' })
	hl(0, "TSEnvironmentName", { fg = c.preproc, bg = 'NONE' })
	hl(0, "TSVariableBtin", { fg = c.err, bg = 'NONE' })
	hl(0, "TSConstMacro", { fg = c.fn, bg = 'NONE' })
	hl(0, "TSTypeBtin", { fg = c.fn, bg = 'NONE' })
	hl(0, "TSAnnotation", { fg = c.preproc, bg = 'NONE' })
	hl(0, "TSNamespace", { fg = c.preproc, bg = 'NONE' })
	hl(0, "TSSymbol", { fg = c.fn, bg = 'NONE' })
	hl(0, "TSField", { fg = c.parameter, bg = 'NONE' })
	hl(0, "TSProperty", { fg = c.fn, bg = 'NONE' })
	hl(0, "Property", { fg = c.fn, bg = 'NONE' })
	hl(0, "TSParameter", { fg = c.parameter, bg = 'NONE' })
	hl(0, "TSParameterReference", { fg = c.parameter, bg = 'None' })
	hl(0, "TSAttribute", { fg = c.err, bg = 'NONE' })
	hl(0, "TSText", { fg = c.parameter, bg = 'NONE' })
	hl(0, "TSTagAttribute", { fg = c.hint, bg = 'NONE', italic = true, })
	hl(0, "TSError", { fg = c.err, bg = 'NONE' })
	hl(0, "TSWarning", { fg = c.err, bg = 'NONE' })
	hl(0, "TSQueryLinterError", { fg = c.err, bg = 'NONE' })
	hl(0, "TSURI", { fg = c.preproc, bg = 'NONE', underline = true, })
	hl(0, "TSMath", { fg = c.hint, bg = 'NONE' })
	hl(0, "TSLiteral", { fg = c.hint, bg = 'NONE' })

	-- markdown
	hl(0, "markdownBlockquote", { fg = c.hint, bg = 'NONE' })
	hl(0, "markdownCode", { fg = c.hint, bg = 'NONE' })
	hl(0, "markdownCodeBlock", { fg = c.hint, bg = 'NONE' })
	hl(0, "markdownCodeDelimiter", { fg = c.hint, bg = 'NONE' })
	hl(0, "markdownH1", { link = 'Title' })
	hl(0, "markdownH2", { link = 'Title' })
	hl(0, "markdownH3", { link = 'Title' })
	hl(0, "markdownH4", { link = 'Title' })
	hl(0, "markdownH5", { link = 'Title' })
	hl(0, "markdownH6", { link = 'Title' })
	hl(0, "markdownHeadingDelimiter", { fg = c.preproc, bg = 'NONE' })
	hl(0, "markdownHeadingRule", { fg = c.info, bg = 'NONE', bold = true, })
	hl(0, "markdownId", { link = 'Identifier' })
	hl(0, "markdownIdDeclaration", { fg = c.preproc, bg = 'NONE' })
	hl(0, "markdownIdDelimiter", { fg = c.fg, bg = 'NONE' })
	hl(0, "markdownLinkDelimiter", { fg = c.fg, bg = 'NONE' })
	hl(0, "markdownBold", { fg = c.preproc, bg = 'NONE', bold = true, })
	hl(0, "markdownItalic", { link = 'Italic' })
	hl(0, "markdownBoldItalic", { fg = c.hint, bg = 'NONE', bold = true, italic = true, })
	hl(0, "markdownListMarker", { fg = c.preproc, bg = 'NONE' })
	hl(0, "markdownOrderedListMarker", { fg = c.preproc, bg = 'NONE' })
	hl(0, "markdownRule", { fg = c.hint, bg = 'NONE' })
	hl(0, "markdownUrl", { fg = c.preproc, bg = 'NONE', underdotted = true, })
	hl(0, "markdownLinkText", { fg = c.preproc, bg = 'NONE' })
	hl(0, "markdownFootnote", { fg = c.hint, bg = 'NONE' })
	hl(0, "markdownFootnoteDefinition", { fg = c.hint, bg = 'NONE' })
	hl(0, "markdownEscape", { fg = c.hint, bg = 'NONE' })

	-- Whichkey
	hl(0, "WhichKey", { fg = c.preproc, bg = 'NONE' })
	hl(0, "WhichKeySeperator", { fg = c.preproc, bg = 'NONE' })
	hl(0, "WhichKeyGroup", { fg = c.preproc, bg = 'NONE' })
	hl(0, "WhichKeyDesc", { fg = c.info, bg = 'NONE' })
	hl(0, "WhichKeyFloat", { fg = 'NONE', bg = c.alt })

	-- Git
	hl(0, "SignAdd", { fg = c.preproc, bg = 'NONE' })
	hl(0, "SignChange", { fg = c.preproc, bg = 'NONE' })
	hl(0, "SignDelete", { fg = c.preproc, bg = 'NONE' })
	hl(0, "GitSignsAdd", { fg = c.preproc, bg = 'NONE' })
	hl(0, "GitSignsChange", { fg = c.preproc, bg = 'NONE' })
	hl(0, "GitSignsDelete", { fg = c.preproc, bg = 'NONE' })

	-- LSP
	hl(0, "DiagnosticHint", { fg = c.preproc, bg = c.bg })
	hl(0, "DiagnosticInfo", { fg = c.info, bg = c.bg })
	hl(0, "DiagnosticWarn", { fg = c.err, bg = c.bg })
	hl(0, "DiagnosticError", { fg = c.err, bg = c.bg })
	hl(0, "DiagnosticOther", { fg = c.preproc, bg = c.bg })
	hl(0, "DiagnosticSignHint", { link = 'DiagnosticHint' })
	hl(0, "DiagnosticSignInfo", { link = 'DiagnosticInfo' })
	hl(0, "DiagnosticSignWarn", { link = 'DiagnosticWarn' })
	hl(0, "DiagnosticSignError", { link = 'DiagnosticError' })
	hl(0, "DiagnosticSignOther", { link = 'DiagnosticOther' })
	hl(0, "DiagnosticSignWarning", { link = 'DiagnosticWarn' })
	hl(0, "DiagnosticFloatingHint", { link = 'DiagnosticHint' })
	hl(0, "DiagnosticFloatingInfo", { link = 'DiagnosticInfo' })
	hl(0, "DiagnosticFloatingWarn", { link = 'DiagnosticWarn' })
	hl(0, "DiagnosticFloatingError", { link = 'DiagnosticError' })
	hl(0, "DiagnosticUnderlineHint", { fg = 'NONE', bg = 'NONE', sp = c.var, undercurl = true, })
	hl(0, "DiagnosticUnderlineInfo", { fg = 'NONE', bg = 'NONE', sp = c.info, undercurl = true, })
	hl(0, "DiagnosticUnderlineWarn", { fg = 'NONE', bg = 'NONE', sp = c.err, undercurl = true, })
	hl(0, "DiagnosticUnderlineError", { fg = 'NONE', bg = 'NONE', sp = c.err, undercurl = true, })
	hl(0, "DiagnosticSignInformation", { link = 'DiagnosticInfo' })
	hl(0, "DiagnosticVirtualTextHint", { fg = c.var, bg = c.var_bg })
	hl(0, "DiagnosticVirtualTextInfo", { fg = c.info, bg = c.info_bg })
	hl(0, "DiagnosticVirtualTextWarn", { fg = c.err, bg = c.err_bg })
	hl(0, "DiagnosticVirtualTextError", { fg = c.err, bg = c.err_bg })
	hl(0, "LspDiagnosticsError", { fg = c.err, bg = 'NONE' })
	hl(0, "LspDiagnosticsWarning", { fg = c.err, bg = 'NONE' })
	hl(0, "LspDiagnosticsInfo", { fg = c.info, bg = 'NONE' })
	hl(0, "LspDiagnosticsInformation", { link = 'LspDiagnosticsInfo' })
	hl(0, "LspDiagnosticsHint", { fg = c.var, bg = 'NONE' })
	hl(0, "LspDiagnosticsDefaultError", { link = 'LspDiagnosticsError' })
	hl(0, "LspDiagnosticsDefaultWarning", { link = 'LspDiagnosticsWarning' })
	hl(0, "LspDiagnosticsDefaultInformation", { link = 'LspDiagnosticsInfo' })
	hl(0, "LspDiagnosticsDefaultInfo", { link = 'LspDiagnosticsInfo' })
	hl(0, "LspDiagnosticsDefaultHint", { link = 'LspDiagnosticsHint' })
	hl(0, "LspDiagnosticsVirtualTextError", { link = 'DiagnosticVirtualTextError' })
	hl(0, "LspDiagnosticsVirtualTextWarning", { link = 'DiagnosticVirtualTextWarn' })
	hl(0, "LspDiagnosticsVirtualTextInformation", { link = 'DiagnosticVirtualTextInfo' })
	hl(0, "LspDiagnosticsVirtualTextInfo", { link = 'DiagnosticVirtualTextInfo' })
	hl(0, "LspDiagnosticsVirtualTextHint", { link = 'DiagnosticVirtualTextHint' })
	hl(0, "LspDiagnosticsFloatingError", { link = 'LspDiagnosticsError' })
	hl(0, "LspDiagnosticsFloatingWarning", { link = 'LspDiagnosticsWarning' })
	hl(0, "LspDiagnosticsFloatingInformation", { link = 'LspDiagnosticsInfo' })
	hl(0, "LspDiagnosticsFloatingInfo", { link = 'LspDiagnosticsInfo' })
	hl(0, "LspDiagnosticsFloatingHint", { link = 'LspDiagnosticsHint' })
	hl(0, "LspDiagnosticsSignError", { link = 'LspDiagnosticsError' })
	hl(0, "LspDiagnosticsSignWarning", { link = 'LspDiagnosticsWarning' })
	hl(0, "LspDiagnosticsSignInformation", { link = 'LspDiagnosticsInfo' })
	hl(0, "LspDiagnosticsSignInfo", { link = 'LspDiagnosticsInfo' })
	hl(0, "LspDiagnosticsSignHint", { link = 'LspDiagnosticsHint' })
	hl(0, "NvimTreeLspDiagnosticsError", { link = 'LspDiagnosticsError' })
	hl(0, "NvimTreeLspDiagnosticsWarning", { link = 'LspDiagnosticsWarning' })
	hl(0, "NvimTreeLspDiagnosticsInformation", { link = 'LspDiagnosticsInfo' })
	hl(0, "NvimTreeLspDiagnosticsInfo", { link = 'LspDiagnosticsInfo' })
	hl(0, "NvimTreeLspDiagnosticsHint", { link = 'LspDiagnosticsHint' })
	hl(0, "LspDiagnosticsUnderlineError", { link = 'DiagnosticUnderlineError' })
	hl(0, "LspDiagnosticsUnderlineWarning", { link = 'DiagnosticUnderlineWarn' })
	hl(0, "LspDiagnosticsUnderlineInformation", { link = 'DiagnosticUnderlineInfo' })
	hl(0, "LspDiagnosticsUnderlineInfo", { link = 'DiagnosticUnderlineInfo' })
	hl(0, "LspDiagnosticsUnderlineHint", { link = 'DiagnosticUnderlineHint' })
	hl(0, "LspReferenceRead", { fg = 'NONE', bg = c.alt })
	hl(0, "LspReferenceText", { fg = 'NONE', bg = c.alt })
	hl(0, "LspReferenceWrite", { fg = 'NONE', bg = c.alt })
	hl(0, "LspCodeLens", { fg = c.fg, bg = 'NONE', italic = true, })
	hl(0, "LspCodeLensSeparator", { fg = c.fg, bg = 'NONE', italic = true, })

	-- Qkscope
	hl(0, "QkScopePrimary", { fg = '#ff007c', bg = 'NONE', underline = true, })
	hl(0, "QkScopeSecondary", { fg = '#00dfff', bg = 'NONE', underline = true, })

	-- Telescope
	hl(0, "TelescopeSelection", { fg = c.constant, bg = c.alt })
	hl(0, "TelescopeSelectionCaret", { fg = c.braces, bg = c.alt })
	hl(0, "TelescopeMatching", { fg = c.opt, bg = 'NONE', bold = true, italic = true, })
	hl(0, "TelescopeBorder", { fg = c.constant, bg = 'NONE' })
	hl(0, "TelescopeNormal", { fg = c.info, bg = c.bg })
	hl(0, "TelescopePromptTitle", { fg = c.info, bg = 'NONE' })
	hl(0, "TelescopePromptPrefix", { fg = c.braces, bg = 'NONE' })
	hl(0, "TelescopeResultsTitle", { fg = c.info, bg = 'NONE' })
	hl(0, "TelescopePreviewTitle", { fg = c.constant, bg = 'NONE' })
	hl(0, "TelescopePromptCounter", { fg = c.info, bg = 'NONE' })
	hl(0, "TelescopePreviewHyphen", { fg = c.preproc, bg = 'NONE' })

	-- NvimTree
	hl(0, "NvimTreeFolderIcon", { link = 'Directory' })
	hl(0, "NvimTreeIndentMarker", { fg = c.fg, bg = 'NONE' })
	hl(0, "NvimTreeNormal", { fg = c.gray, bg = c.bg })
	hl(0, "NvimTreeVertSplit", { fg = c.alt, bg = c.alt })
	hl(0, "NvimTreeFolderName", { fg = c.infinity, bg = 'NONE' })
	hl(0, "NvimTreeOpenedFolderName", { fg = c.folder_blue, bg = 'NONE', bold = true })
	hl(0, "NvimTreeEmptyFolderName", { fg = c.gray, bg = 'NONE', italic = true, })
	hl(0, "NvimTreeGitIgnored", { fg = c.comment, bg = 'NONE', italic = true, })
	hl(0, "NvimTreeImageFile", { fg = c.fg, bg = 'NONE' })
	hl(0, "NvimTreeSpecialFile", { fg = c.braces, bg = 'NONE' })
	hl(0, "NvimTreeEndOfBuffer", { fg = c.bg, bg = 'NONE' })
	hl(0, "NvimTreeCursorLine", { fg = 'NONE', bg = c.alt })
	hl(0, "NvimTreeGitStaged", { fg = c.staged, bg = 'NONE' })
	hl(0, "NvimTreeGitNew", { fg = c.untracked, bg = 'NONE' })
	hl(0, "NvimTreeGitRenamed", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NvimTreeGitDeleted", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NvimTreeGitMerge", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NvimTreeGitDirty", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NvimTreeSymlink", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NvimTreeRootFolder", { fg = c.gray, bg = 'NONE', bold = true, })
	hl(0, "NvimTreeExecFile", { fg = '#9FBA89', bg = 'NONE' })

	-- Lir
	hl(0, "LirFloatNormal", { fg = c.info, bg = c.alt })
	hl(0, "LirDir", { link = 'Directory' })
	hl(0, "LirSymLink", { fg = c.preproc, bg = 'NONE' })
	hl(0, "LirEmptyDirText", { fg = c.hint, bg = 'NONE', italic = true, })

	-- Buffer
	hl(0, "BufferCurrent", { fg = c.fg, bg = c.bg })
	hl(0, "BufferCurrentIndex", { fg = c.braces, bg = c.bg })
	hl(0, "BufferCurrentMod", { fg = c.braces, bg = c.bg })
	hl(0, "BufferCurrentSign", { fg = c.var, bg = c.bg })
	hl(0, "BufferCurrentTarget", { fg = c.err, bg = c.bg, bold = true, })
	hl(0, "BufferVisible", { fg = '#7dcef1', bg = c.bg })
	hl(0, "BufferVisibleIndex", { fg = c.fg, bg = c.bg })
	hl(0, "BufferVisibleMod", { fg = c.fg, bg = c.bg })
	hl(0, "BufferVisibleSign", { fg = c.hint, bg = c.bg })
	hl(0, "BufferVisibleTarget", { fg = c.err, bg = c.bg, bold = true, })
	hl(0, "BufferInactive", { fg = c.gray, bg = c.alt })
	hl(0, "BufferInactiveIndex", { fg = c.hint, bg = c.alt })
	hl(0, "BufferInactiveMod", { fg = c.fg, bg = c.alt })
	hl(0, "BufferInactiveSign", { fg = c.hint, bg = c.alt })
	hl(0, "BufferInactiveTarget", { fg = c.err, bg = c.alt, bold = true, })

	-- StatusLine
	hl(0, "StatusLine", { fg = c.fg, bg = c.bg })
	hl(0, "StatusLineNC", { fg = "NONE", bg = "NONE" })
	hl(0, "StatusLineSeparator", { fg = c.bg, bg = 'NONE' })
	hl(0, "StatusLineTerm", { fg = c.bg, bg = 'NONE' })
	hl(0, "StatusLineTermNC", { fg = c.bg, bg = 'NONE' })

	-- IndentBlankline
	hl(0, "IndentBlanklineContextChar", { fg = c.info, bg = 'NONE' })
	hl(0, "IndentBlanklineContextStart", { fg = 'NONE', bg = 'NONE', underline = true, })
	hl(0, "IndentBlanklineChar", { fg = c.alt, bg = 'NONE' })
	hl(0, "IndentBlanklineIndent1", { fg = c.fg, bg = 'NONE' })
	hl(0, "IndentBlanklineIndent2", { fg = c.fg, bg = 'NONE' })
	hl(0, "IndentBlanklineIndent3", { fg = c.fg, bg = 'NONE' })
	hl(0, "IndentBlanklineIndent4", { fg = c.fg, bg = 'NONE' })
	hl(0, "IndentBlanklineIndent5", { fg = c.fg, bg = 'NONE' })
	hl(0, "IndentBlanklineIndent6", { fg = c.fg, bg = 'NONE' })

	-- Dashboard
	hl(0, "DashboardHeader", { fg = c.preproc, bg = 'NONE' })
	hl(0, "DashboardCenter", { fg = c.preproc, bg = 'NONE' })
	hl(0, "DashboardFooter", { fg = c.preproc, bg = 'NONE' })

	-- DiffView
	hl(0, "DiffViewNormal", { fg = c.hint, bg = c.alt })
	hl(0, "DiffviewStatusAdded", { fg = c.preproc, bg = 'NONE' })
	hl(0, "DiffviewStatusModified", { fg = c.preproc, bg = 'NONE' })
	hl(0, "DiffviewStatusRenamed", { fg = c.preproc, bg = 'NONE' })
	hl(0, "DiffviewStatusDeleted", { fg = c.preproc, bg = 'NONE' })
	hl(0, "DiffviewFilePanelInsertion", { fg = c.preproc, bg = 'NONE' })
	hl(0, "DiffviewFilePanelDeletion", { fg = c.preproc, bg = 'NONE' })
	hl(0, "DiffviewVertSplit", { fg = 'NONE', bg = c.bg })

	-- Bookmarks
	hl(0, "BookmarkSign", { fg = c.preproc, bg = 'NONE' })
	hl(0, "BookmarkAnnotationSign", { fg = c.hint, bg = 'NONE' })
	hl(0, "BookmarkLine", { fg = c.preproc, bg = 'NONE' })
	hl(0, "BookmarkAnnotationLine", { fg = c.preproc, bg = 'NONE' })

	-- Bqf
	hl(0, "BqfPreviewBorder", { fg = c.info, bg = 'NONE' })
	hl(0, "BqfPreviewRange", { fg = 'NONE', bg = c.preproc })

	-- Cmp
	hl(0, "CmpItemAbbrMatch", { fg = c.preproc, bg = 'NONE' })
	hl(0, "CmpItemAbbrMatchFuzzy", { fg = c.preproc, bg = 'NONE' })
	hl(0, "CmpItemKindFunction", { fg = c.preproc, bg = 'NONE' })
	hl(0, "CmpItemKindMethod", { fg = c.preproc, bg = 'NONE' })
	hl(0, "CmpItemKindConstructor", { fg = c.preproc, bg = 'NONE' })
	hl(0, "CmpItemKindClass", { fg = c.fn, bg = 'NONE' })
	hl(0, "CmpItemKindEnum", { fg = c.preproc, bg = 'NONE' })
	hl(0, "CmpItemKindEvent", { fg = c.hint, bg = 'NONE' })
	hl(0, "CmpItemKindInterface", { fg = c.preproc, bg = 'NONE' })
	hl(0, "CmpItemKindStruct", { fg = c.preproc, bg = 'NONE' })
	hl(0, "CmpItemKindVariable", { fg = c.err, bg = 'NONE' })
	hl(0, "CmpItemKindField", { fg = c.err, bg = 'NONE' })
	hl(0, "CmpItemKindProperty", { fg = c.err, bg = 'NONE' })
	hl(0, "CmpItemKindEnumMember", { fg = c.hint, bg = 'NONE' })
	hl(0, "CmpItemKindConstant", { fg = c.hint, bg = 'NONE' })
	hl(0, "CmpItemKindKeyword", { fg = c.preproc, bg = 'NONE' })
	hl(0, "CmpItemKindModule", { fg = c.preproc, bg = 'NONE' })
	hl(0, "CmpItemKindValue", { fg = c.info, bg = 'NONE' })
	hl(0, "CmpItemKindUnit", { fg = c.info, bg = 'NONE' })
	hl(0, "CmpItemKindText", { fg = c.info, bg = 'NONE' })
	hl(0, "CmpItemKindSnippet", { fg = c.hint, bg = 'NONE' })
	hl(0, "CmpItemKindFile", { fg = c.info, bg = 'NONE' })
	hl(0, "CmpItemKindFolder", { fg = c.info, bg = 'NONE' })
	hl(0, "CmpItemKindColor", { fg = c.info, bg = 'NONE' })
	hl(0, "CmpItemKindReference", { fg = c.info, bg = 'NONE' })
	hl(0, "CmpItemKindOperator", { fg = c.info, bg = 'NONE' })
	hl(0, "CmpItemKindTypeParameter", { fg = c.err, bg = 'NONE' })

	-- Navic
	hl(0, "NavicIconsFile", { fg = c.info, bg = 'NONE' })
	hl(0, "NavicIconsModule", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NavicIconsNamespace", { fg = c.info, bg = 'NONE' })
	hl(0, "NavicIconsPackage", { fg = c.info, bg = 'NONE' })
	hl(0, "NavicIconsClass", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NavicIconsMethod", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NavicIconsProperty", { fg = c.err, bg = 'NONE' })
	hl(0, "NavicIconsField", { fg = c.err, bg = 'NONE' })
	hl(0, "NavicIconsConstructor", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NavicIconsEnum", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NavicIconsInterface", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NavicIconsFunction", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NavicIconsVariable", { fg = c.err, bg = 'NONE' })
	hl(0, "NavicIconsConstant", { fg = c.hint, bg = 'NONE' })
	hl(0, "NavicIconsString", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NavicIconsNumber", { fg = c.hint, bg = 'NONE' })
	hl(0, "NavicIconsBoolean", { fg = c.hint, bg = 'NONE' })
	hl(0, "NavicIconsArray", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NavicIconsObject", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NavicIconsKey", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NavicIconsKeyword", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NavicIconsNull", { fg = c.hint, bg = 'NONE' })
	hl(0, "NavicIconsEnumMember", { fg = c.hint, bg = 'NONE' })
	hl(0, "NavicIconsStruct", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NavicIconsEvent", { fg = c.hint, bg = 'NONE' })
	hl(0, "NavicIconsOperator", { fg = c.info, bg = 'NONE' })
	hl(0, "NavicIconsTypeParameter", { fg = c.parameter, bg = 'NONE' })
	hl(0, "NavicText", { fg = c.fg, bg = 'NONE' })
	hl(0, "NavicSeparator", { fg = c.fg, bg = 'NONE' })


	-- Packer
	hl(0, "packerString", { fg = c.hint, bg = c.bg })
	hl(0, "packerHash", { fg = c.preproc, bg = c.bg })
	hl(0, "packerOutput", { fg = c.preproc, bg = c.bg })
	hl(0, "packerRelDate", { fg = c.hint, bg = c.bg })
	hl(0, "packerSuccess", { fg = c.info, bg = c.bg })
	hl(0, "packerStatusSuccess", { fg = c.preproc, bg = c.bg })

	-- SymbolOutline
	hl(0, "SymbolsOutlineConnector", { fg = c.hint, bg = 'NONE' })
	hl(0, "FocusedSymbol", { fg = 'NONE', bg = '#36383F' })

	-- Notify
	hl(0, "NotifyERRORBorder", { fg = '#8A1F1F', bg = 'NONE' })
	hl(0, "NotifyWARNBorder", { fg = '#79491D', bg = 'NONE' })
	hl(0, "NotifyINFOBorder", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NotifyDEBUGBorder", { fg = c.hint, bg = 'NONE' })
	hl(0, "NotifyTRACEBorder", { fg = '#4F3552', bg = 'NONE' })
	hl(0, "NotifyERRORIcon", { fg = c.err, bg = 'NONE' })
	hl(0, "NotifyWARNIcon", { fg = c.err, bg = 'NONE' })
	hl(0, "NotifyINFOIcon", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NotifyDEBUGIcon", { fg = c.hint, bg = 'NONE' })
	hl(0, "NotifyTRACEIcon", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NotifyERRORTitle", { fg = c.err, bg = 'NONE' })
	hl(0, "NotifyWARNTitle", { fg = c.err, bg = 'NONE' })
	hl(0, "NotifyINFOTitle", { fg = c.preproc, bg = 'NONE' })
	hl(0, "NotifyDEBUGTitle", { fg = c.hint, bg = 'NONE' })
	hl(0, "NotifyTRACETitle", { fg = c.preproc, bg = 'NONE' })

	-- TreesitterContext
	hl(0, "TreesitterContext", { fg = 'NONE', bg = c.alt })

	-- Hop
	hl(0, "HopNextKey", { fg = '#4ae0ff', bg = 'NONE' })
	hl(0, "HopNextKey1", { fg = '#d44eed', bg = 'NONE' })
	hl(0, "HopNextKey2", { fg = '#b42ecd', bg = 'NONE' })
	hl(0, "HopUnmatched", { fg = c.hint, bg = 'NONE' })
	hl(0, "HopPreview", { fg = '#c7ba7d', bg = 'NONE' })

	-- Crates
	hl(0, "CratesNvimLoading", { fg = c.var, bg = 'NONE' })
	hl(0, "CratesNvimVersion", { fg = c.var, bg = 'NONE' })

	-- Misc
	hl(0, "diffAdded", { fg = c.preproc, bg = 'NONE' })
	hl(0, "diffRemoved", { fg = c.preproc, bg = 'NONE' })
	hl(0, "diffFileId", { fg = c.preproc, bg = 'NONE', bold = true, reverse = true, })
	hl(0, "diffFile", { fg = c.alt, bg = 'NONE' })
	hl(0, "diffNewFile", { fg = c.preproc, bg = 'NONE' })
	hl(0, "diffOldFile", { fg = c.err, bg = 'NONE' })
	hl(0, "debugPc", { fg = 'NONE', bg = c.preproc })
	hl(0, "debugBreakpoint", { fg = c.err, bg = 'NONE', reverse = true, })
	hl(0, "CodiVirtualText", { fg = c.var, bg = 'NONE' })
	hl(0, "SniprunVirtualTextOk", { fg = c.var, bg = 'NONE' })
	hl(0, "SniprunFloatingWinOk", { fg = c.var, bg = 'NONE' })
	hl(0, "SniprunVirtualTextErr", { fg = c.err, bg = 'NONE' })
	hl(0, "SniprunFloatingWinErr", { fg = c.err, bg = 'NONE' })
	hl(0, "DapBreakpoint", { fg = c.err, bg = 'NONE' })

	-- Language
	hl(0, "xmlTag", { fg = c.preproc, bg = 'NONE' })
	hl(0, "xmlTagName", { fg = c.preproc, bg = 'NONE' })
	hl(0, "xmlEndTag", { fg = c.preproc, bg = 'NONE' })
	hl(0, "yamlPlainScalar", { fg = c.hint, bg = 'NONE' })
	hl(0, "yamlTSField", { fg = c.preproc, bg = 'NONE' })
	hl(0, "luaFunc", { fg = c.fn, bg = 'NONE' })
	hl(0, "luaFunction", { fg = c.fn, bg = 'NONE' })
	hl(0, "hclTSPunctSpecial", { fg = c.info, bg = 'NONE' })
	hl(0, "htmlH1", { fg = c.info, bg = 'NONE' })
	hl(0, "htmlH2", { fg = c.info, bg = 'NONE' })
	hl(0, "htmlH3", { fg = c.info, bg = 'NONE' })
	hl(0, "htmlH4", { fg = c.info, bg = 'NONE' })
	hl(0, "htmlH5", { fg = c.info, bg = 'NONE' })
	hl(0, "htmlH6", { fg = c.info, bg = 'NONE' })
	hl(0, "htmlHead", { fg = c.info, bg = 'NONE' })
	hl(0, "htmlTitle", { fg = c.info, bg = 'NONE' })
	hl(0, "htmlArg", { fg = c.info, bg = 'NONE' })
	hl(0, "htmlTag", { fg = c.preproc, bg = 'NONE' })
	hl(0, "htmlTagN", { fg = c.preproc, bg = 'NONE' })
	hl(0, "htmlTagName", { fg = c.preproc, bg = 'NONE' })
	hl(0, "htmlComment", { fg = c.comment, bg = 'NONE' })
	hl(0, "htmlLink", { fg = c.hint, bg = 'NONE', underline = true, })
	hl(0, "cssBraces", { fg = c.braces, bg = 'NONE' })
	hl(0, "cssInclude", { fg = c.preproc, bg = 'NONE' })
	hl(0, "cssTagName", { fg = c.hint, bg = 'NONE' })
	hl(0, "cssClassName", { fg = c.hint, bg = 'NONE' })
	hl(0, "cssPseudoClass", { fg = c.hint, bg = 'NONE' })
	hl(0, "cssPseudoClassId", { fg = c.hint, bg = 'NONE' })
	hl(0, "cssPseudoClassLang", { fg = c.hint, bg = 'NONE' })
	hl(0, "cssIdentifier", { fg = c.hint, bg = 'NONE' })
	hl(0, "cssProp", { fg = c.info, bg = 'NONE' })
	hl(0, "cssDefinition", { fg = c.info, bg = 'NONE' })
	hl(0, "cssAttr", { fg = c.hint, bg = 'NONE' })
	hl(0, "cssAttrRegion", { fg = c.hint, bg = 'NONE' })
	hl(0, "cssColor", { fg = c.hint, bg = 'NONE' })
	hl(0, "cssFunction", { fg = c.preproc, bg = 'NONE' })
	hl(0, "cssFunctionName", { fg = c.hint, bg = 'NONE' })
	hl(0, "cssVendor", { fg = c.hint, bg = 'NONE' })
	hl(0, "cssValueNumber", { fg = c.hint, bg = 'NONE' })
	hl(0, "cssValueLength", { fg = c.hint, bg = 'NONE' })
	hl(0, "cssUnitDecorators", { fg = c.hint, bg = 'NONE' })
	hl(0, "cssStyle", { fg = c.info, bg = 'NONE' })
	hl(0, "cssImportant", { fg = c.preproc, bg = 'NONE' })
	hl(0, "jsonKeyword", { fg = c.preproc, bg = 'NONE' })
	hl(0, "yamlBlockMappingKey", { fg = c.preproc, bg = 'NONE' })
	hl(0, "tomlTSProperty", { fg = c.preproc, bg = 'NONE' })
end

return M
