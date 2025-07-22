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
        white = "#EBEBEB",
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

        ["@type"] = { fg = colors.gold, italic = true, bold = true },
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
        qfFileName = { fg = colors.light_orange },
        QuickFixLine = { fg = colors.red_pink, bold = true},
        qfLineNr = { fg = colors.light_orange },

        -- Telescope
        TelescopeMatching = { fg = colors.orange2, bold = true},

        -- Cursor
        CurSearch = { fg = colors.background, bg = colors.light_orange },

        -- Diagnostics
        DiagnosticInfo = { fg = colors.chinese_violet, bg = colors.background},
        DiagnosticFloatingInfo = { fg = colors.gold, bg = colors.background},
        Debug = { fg = colors.light_green, bg = colors.background},

        Changed = { fg = colors.light_green, bg = colors.background},

        -- CMP
        CmpItemAbbr = { fg = colors.gold, italic = true},
        CmpItemKind = { fg = colors.gold, italic = true},
        CmpItemMenu = { fg = colors.gold, italic = true},
        CmpItemKindEnum = { fg = colors.gold, italic = true},
        CmpItemKindFile = { fg = colors.gold, italic = true},
        CmpItemKindText = { fg = colors.gold, italic = true},
        CmpItemKindUnit = { fg = colors.gold, italic = true},
        CmpItemAbbrMatch = { fg = colors.gold, italic = true},
        CmpItemKindClass = { fg = colors.gold, italic = true},
        CmpItemKindColor = { fg = colors.gold, italic = true},
        CmpItemKindEvent = { fg = colors.gold, italic = true},
        CmpItemKindField = { fg = colors.gold, italic = true},
        CmpItemKindValue = { fg = colors.gold, italic = true},
        CmpItemKindFolder = { fg = colors.gold, italic = true},
        CmpItemKindMethod = { fg = colors.gold, italic = true},
        CmpItemKindModule = { fg = colors.gold, italic = true},
        CmpItemKindStruct = { fg = colors.gold, italic = true},
        CmpItemAbbrDefault = { fg = colors.gold, italic = true},
        CmpItemKindDefault = { fg = colors.gold, italic = true},
        CmpItemKindKeyword = { fg = colors.gold, italic = true},
        CmpItemKindSnippet = { fg = colors.gold, italic = true},
        CmpItemMenuDefault = { fg = colors.gold, italic = true},
        CmpItemKindConstant = { fg = colors.gold, italic = true},
        CmpItemKindFunction = { fg = colors.gold, italic = true},
        CmpItemKindOperator = { fg = colors.gold, italic = true},
        CmpItemKindProperty = { fg = colors.gold, italic = true},
        CmpItemKindVariable = { fg = colors.gold, italic = true},
        CmpItemKindInterface = { fg = colors.gold, italic = true},
        CmpItemKindReference = { fg = colors.gold, italic = true},
        CmpItemAbbrDeprecated = { fg = colors.gold, italic = true},
        CmpItemAbbrMatchFuzzy = { fg = colors.gold, italic = true},
        CmpItemKindEnumMember = { fg = colors.gold, italic = true},
        CmpItemKindConstructor = { fg = colors.gold, italic = true},
        CmpItemKindEnumDefault = { fg = colors.gold, italic = true},
        CmpItemKindFileDefault = { fg = colors.gold, italic = true},
        CmpItemKindTextDefault = { fg = colors.gold, italic = true},
        CmpItemKindUnitDefault = { fg = colors.gold, italic = true},
        CmpItemAbbrMatchDefault = { fg = colors.gold, italic = true},
        CmpItemKindClassDefault = { fg = colors.gold, italic = true},
        CmpItemKindColorDefault = { fg = colors.gold, italic = true},
        CmpItemKindEventDefault = { fg = colors.gold, italic = true},
        CmpItemKindFieldDefault = { fg = colors.gold, italic = true},
        CmpItemKindValueDefault = { fg = colors.gold, italic = true},
        CmpItemKindFolderDefault = { fg = colors.gold, italic = true},
        CmpItemKindMethodDefault = { fg = colors.gold, italic = true},
        CmpItemKindModuleDefault = { fg = colors.gold, italic = true},
        CmpItemKindStructDefault = { fg = colors.gold, italic = true},
        CmpItemKindTypeParameter = { fg = colors.gold, italic = true},
        CmpItemKindKeywordDefault = { fg = colors.gold, italic = true},
        CmpItemKindSnippetDefault = { fg = colors.gold, italic = true},
        CmpItemKindConstantDefault = { fg = colors.gold, italic = true},
        CmpItemKindFunctionDefault = { fg = colors.gold, italic = true},
        CmpItemKindOperatorDefault = { fg = colors.gold, italic = true},
        CmpItemKindPropertyDefault = { fg = colors.gold, italic = true},
        CmpItemKindVariableDefault = { fg = colors.gold, italic = true},
        CmpItemKindInterfaceDefault = { fg = colors.gold, italic = true},
        CmpItemKindReferenceDefault = { fg = colors.gold, italic = true},
        CmpItemAbbrDeprecatedDefault = { fg = colors.gold, italic = true},
        CmpItemAbbrMatchFuzzyDefault = { fg = colors.gold, italic = true},
        CmpItemKindEnumMemberDefault = { fg = colors.gold, italic = true},
        CmpItemKindConstructorDefault = { fg = colors.gold, italic = true},
        CmpItemKindTypeParameterDefault = { fg = colors.gold, italic = true},

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
