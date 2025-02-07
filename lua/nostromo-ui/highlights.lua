local colors = {
    Normal = {fg = "#A3FAFF", bg = "#151E23"},
    Identifier = {link = "Normal"},
    Comment = {fg = "#3B4D4F"},
    Constant = {fg = "#3BF1AC"},
    Delimiter = {link = "Constant"},
    CurSearch = {fg = "#151E23", bg = "#3BF1AC"},
    Search = {link = "CurSearch"},
    Cursor = {fg = "#1A262D", bg = "#A3FAFF"},
    DiagnosticError = {fg = "#DD513C", underdouble = true},
    DiagnosticHint = {fg = "#4DDBFF", underdouble = true},
    DiagnosticInfo = {fg = "#A3FAFF", underdouble = true},
    DiagnosticWarn = {fg = "#3BF1AC", underdouble = true},
    DiffAdd = {fg = "#3BF1AC"},
    DiffDelete = {fg = "#DD513C"},
    Directory = {fg = "#A3FAFF"},
    Error = {fg = "#151E23", bg = "#DD513C"},
    ErrorMsg = {fg = "#DD513C"},
    Function = {fg = "#3BF1AC"},
    Macro = {link = "Function"},
    LineNr = {fg = "#A3FAFF"},
    LineNrAbove = {fg = "#3B4D4F"},
    LineNrBelow = {link = "LineNrAbove"},
    Number = {fg = "#4DDBFF"},
    Type = {link = "Number"},
    Statement = {fg = "#DD513C"},
    Define = {link = "Statement"},
    Include = {link = "Statement"},
    Operator = {link = "Statement"},
    PreCondit = {link = "Statement"},
    Special = {link = "Statement"},
    StatusLine = {fg = "#151E23", bg = "#4DDBFF"},
    String = {fg = "#3E9ABB"},
    Substitute = {fg = "#151E23", bg = "#4DDBFF"},
    Todo = {fg = "#A3FAFF", bg = "#151E23", underline = true},
    Underlined = {underline = true},
    Visual = {bg = "#3B4D4F"},
    ["@parameter"] = {fg = "#93DDE1"},
}

vim.cmd("highlight clear")
vim.cmd("set t_Co=256")
vim.cmd("let g:colors_name='my_theme'")

-- apply highlight groups
for group, attrs in pairs(colors) do
  vim.api.nvim_set_hl(0, group, attrs)
end
