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
        white = "#FFFFFF",
        dark_blue = "#3B5B91",
    }

    local highlights = {
        Normal = { fg = colors.white, bg = colors.background },
        ["@variable"] = { fg = colors.white },
        ["@keyword"] = { fg = colors.light_orange, italic = true },
        ["@keyword.exception"] = { fg = colors.tan, italic = true },
        ["@keyword.coroutine"] = { fg = colors.light_green},
        ["@string"] = { fg = colors.orange2 },
        ["@string.escape"] = { fg = colors.light_green },
        ["@string.special"] = { fg = colors.dark_blue, italic = true },
        ["@character.special"] = { fg = colors.dark_blue, italic = true },
        ["@number"] = { fg = colors.light_green },
        ["@boolean"] = { fg = colors.soft_red },
        ["@function"] = { fg = colors.strong_yellow },
        ["@type"] = { fg = colors.gold, italic = true, bold = true },
        ["@attribute"] = { fg = colors.light_brown },
        ["@constructor"] = { fg = colors.light_brown},
        ["@property"] = { fg = colors.solid_yellow, italic = true },
        ["@operator"] = { fg = colors.light_orange },
        ["@comment"] = { fg = colors.tan },
        ["@punctuation"] = { fg = colors.light_orange },
        ["@punctuation.bracket"] = { fg = colors.gold, bold = true },
        ["@function.method.call"] = { fg = colors.gold, italic = true },

        -- builtins
        ["@constant.builtin"] = { fg = colors.soft_pink },
        ["@constant"] = { fg = colors.soft_pink},
        ["@function.builtin"] = { fg = colors.soft_red },
        ["@variable.builtin"] = { fg = colors.orange, italic = true },
        ["@variable.member"] = { fg = colors.orange, italic = true },
        ["@type.builtin"] = { fg = colors.soft_pink },
        ["@attribute.builtin"] = { fg = colors.light_brown},

        -- Git
        ["@diff.plus"] = { fg = colors.light_green },
        ["@diff.minus"] = { fg = colors.soft_red },

        -- Language specific
        ["@tag"] = { fg = colors.light_orange },
        makeTarget = { fg = colors.light_orange },

        -- LSP
        ["@comment.error"] = { fg = colors.red_pink },
        ["@comment.note"] = { fg = colors.light_brown },
        ["@comment.warning"] = { fg = colors.soft_red },

        -- Non Tree sitter
        qfFileName = { fg = colors.light_orange },
        qfLineNr = { fg = colors.light_orange },
    }

    for group, opts in pairs(highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end
end

return M
