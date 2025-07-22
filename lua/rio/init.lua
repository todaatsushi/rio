local M = {}

function M.setup()
    local colors = {
        background = "#442C17",
        light_brown = "#D0A076",
        tan = "#D5AB85",
        soft_red = "#FF8F8F",
        soft_pink = "#D4738E",
        red_pink = "#995D81",
        orange = "#BE8651",
        light_orange = "#FAAD6E",
        orange2 = "#D7B67D",
        light_green = "#D8FFDD",
        gold = "#D9D196",
        strong_yellow = "#CABF6D",
        solid_yellow = "#E3B505",
        white = "#CCCCCC",
        dark_blue = "#3B5B91",
    }

    local highlights = {
        Normal = { fg = colors.white, bg = colors.background },

        ["@keyword"] = { fg = colors.light_orange, italic = true },
        ["@keyword.exception"] = { fg = colors.tan, italic = true },
        ["@keyword.coroutine"] = { fg = colors.light_green},

        ["@variable"] = { fg = colors.white },
        ["@variable.builtin"] = { fg = colors.orange, italic = true },
        ["@variable.member"] = { fg = colors.orange, italic = true },

        ["@string"] = { fg = colors.orange2 },
        ["@string.escape"] = { fg = colors.light_green },
        ["@string.special"] = { fg = colors.dark_blue, italic = true },

        ["@character.special"] = { fg = colors.dark_blue, italic = true },

        ["@number"] = { fg = colors.light_green },

        ["@boolean"] = { fg = colors.soft_red },

        ["@function"] = { fg = colors.strong_yellow },
        ["@function.method.call"] = { fg = colors.gold, italic = true },
        ["@function.builtin"] = { fg = colors.soft_red },

        ["@type"] = { fg = colors.soft_pink, bold = true },
        ["@type.builtin"] = { fg = colors.soft_pink },

        ["@attribute"] = { fg = colors.light_brown },
        ["@attribute.builtin"] = { fg = colors.light_brown},

        ["@constructor"] = { fg = colors.light_brown},

        ["@property"] = { fg = colors.solid_yellow, italic = true },

        ["@operator"] = { fg = colors.light_orange },

        ["@comment"] = { fg = colors.tan },
        ["@comment.error"] = { fg = colors.red_pink },
        ["@comment.note"] = { fg = colors.light_brown },
        ["@comment.warning"] = { fg = colors.soft_red },

        ["@punctuation"] = { fg = colors.light_orange },
        ["@punctuation.bracket"] = { fg = colors.gold, bold = true },

        ["@constant.builtin"] = { fg = colors.soft_pink },
        ["@constant"] = { fg = colors.soft_pink},

        -- Git
        ["@diff.plus"] = { fg = colors.light_green },
        ["@diff.minus"] = { fg = colors.soft_red },
        ["@diff.delta"] = { fg = colors.light_green},

        -- Language specific
        ["@tag"] = { fg = colors.light_orange },
        ["@tag.builtin"] = { fg = colors.gold, bold = true},
        makeTarget = { fg = colors.light_orange },

        -- Non Tree sitter
        qfFileName = { fg = colors.light_brown },
        QuickFixLine = { fg = colors.light_brown, bold = true, italic = true },
        qfLineNr = { fg = colors.light_brown, bold = true },

        -- Telescope
        TelescopeMatching = { fg = colors.orange2, bold = true},

        -- Cursor
        CurSearch = { fg = colors.background, bg = colors.light_orange },

        -- Diagnostics
        DiagnosticInfo = { fg = colors.chinese_violet, bg = colors.background},
        DiagnosticFloatingInfo = { fg = colors.gold, bg = colors.background},
        Debug = { fg = colors.light_green, bg = colors.background},

        Changed = { fg = colors.light_green, bg = colors.background},

        -- Float
        FloatBorder = { fg = colors.gold, bg = colors.background },
        NormalFloat = { fg = colors.white, bg = colors.background },

        -- CMP
        CmpItemAbbr = { fg = colors.light_brown, italic = true},
        CmpItemKind = { fg = colors.light_brown, italic = true},
        CmpItemMenu = { fg = colors.light_brown, italic = true},
        CmpItemKindEnum = { fg = colors.light_brown, italic = true},
        CmpItemKindFile = { fg = colors.light_brown, italic = true},
        CmpItemKindText = { fg = colors.light_brown, italic = true},
        CmpItemKindUnit = { fg = colors.light_brown, italic = true},
        CmpItemAbbrMatch = { fg = colors.light_brown, italic = true},
        CmpItemKindClass = { fg = colors.light_brown, italic = true},
        CmpItemKindColor = { fg = colors.light_brown, italic = true},
        CmpItemKindEvent = { fg = colors.light_brown, italic = true},
        CmpItemKindField = { fg = colors.light_brown, italic = true},
        CmpItemKindValue = { fg = colors.light_brown, italic = true},
        CmpItemKindFolder = { fg = colors.light_brown, italic = true},
        CmpItemKindMethod = { fg = colors.light_brown, italic = true},
        CmpItemKindModule = { fg = colors.light_brown, italic = true},
        CmpItemKindStruct = { fg = colors.light_brown, italic = true},
        CmpItemAbbrDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindKeyword = { fg = colors.light_brown, italic = true},
        CmpItemKindSnippet = { fg = colors.light_brown, italic = true},
        CmpItemMenuDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindConstant = { fg = colors.light_brown, italic = true},
        CmpItemKindFunction = { fg = colors.light_brown, italic = true},
        CmpItemKindOperator = { fg = colors.light_brown, italic = true},
        CmpItemKindProperty = { fg = colors.light_brown, italic = true},
        CmpItemKindVariable = { fg = colors.light_brown, italic = true},
        CmpItemKindInterface = { fg = colors.light_brown, italic = true},
        CmpItemKindReference = { fg = colors.light_brown, italic = true},
        CmpItemAbbrDeprecated = { fg = colors.light_brown, italic = true},
        CmpItemAbbrMatchFuzzy = { fg = colors.light_brown, italic = true},
        CmpItemKindEnumMember = { fg = colors.light_brown, italic = true},
        CmpItemKindConstructor = { fg = colors.light_brown, italic = true},
        CmpItemKindEnumDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindFileDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindTextDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindUnitDefault = { fg = colors.light_brown, italic = true},
        CmpItemAbbrMatchDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindClassDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindColorDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindEventDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindFieldDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindValueDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindFolderDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindMethodDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindModuleDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindStructDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindTypeParameter = { fg = colors.light_brown, italic = true},
        CmpItemKindKeywordDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindSnippetDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindConstantDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindFunctionDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindOperatorDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindPropertyDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindVariableDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindInterfaceDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindReferenceDefault = { fg = colors.light_brown, italic = true},
        CmpItemAbbrDeprecatedDefault = { fg = colors.light_brown, italic = true},
        CmpItemAbbrMatchFuzzyDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindEnumMemberDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindConstructorDefault = { fg = colors.light_brown, italic = true},
        CmpItemKindTypeParameterDefault = { fg = colors.light_brown, italic = true},

        -- Oil
        OilDir = { fg = colors.gold, italic = true },
        OilCopy = { fg = colors.soft_pink, italic = true, bold = true },
        OilMove = { fg = colors.soft_pink, italic = true, bold = true },
        OilPurge = { fg = colors.gold, italic = true, bold = true },
        OilTrash = { fg = colors.gold, italic = true, bold = true },
        OilChange = { fg = colors.soft_pink, italic = true, bold = true },
        OilCreate = { fg = colors.soft_pink, italic = true, bold = true },
        OilDelete = { fg = colors.soft_pink, italic = true},
        OilHidden = { fg = colors.red_pink, italic = true},
        OilSocket = { fg = colors.gold, italic = true},
        OilDirIcon = { fg = colors.gold, italic = true},
        OilRestore = { fg = colors.gold, italic = true},
        OilDirHidden = { fg = colors.gold, italic = true},
        OilFileHidden = { fg = colors.gold, italic = true},
        OilLinkHidden = { fg = colors.gold, italic = true},
        OilLinkTarget = { fg = colors.gold, italic = true},
        OilSocketHidden = { fg = colors.gold, italic = true},
        OilTrashSourcePath = { fg = colors.gold, italic = true},
        OilLinkTargetHidden = { fg = colors.gold, italic = true},
        OilOrphanLinkHidden = { fg = colors.gold, italic = true},
        OilOrphanLinkTarget = { fg = colors.gold, italic = true},
        OilOrphanLinkTargetHidden = { fg = colors.gold, italic = true}
    }

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
