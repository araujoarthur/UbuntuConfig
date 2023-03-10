-- vim.g.material_style = "deep ocean"
-- vim.cmd 'colorscheme material'



-- " For dark version.
vim.g.background='dark'
--  " For light version.
--  vim.g.background=light
--  " Set contrast.
--  " This configuration option should be placed before `colorscheme gruvbox-material`.
--  " Available values: 'hard', 'medium'(default), 'soft'
vim.g.gruvbox_material_background = 'hard'
-- " For better performance
vim.g.gruvbox_material_better_performance = 1
vim.cmd "colorscheme gruvbox-material"

vim.api.nvim_set_hl(0, "LazyButton", { ctermbg=0 })
vim.api.nvim_set_hl(0, "LazyButtonActibe", { ctermfg=1, ctermbg=0 })
vim.api.nvim_set_hl(0, "Normal", { ctermbg=0 })
vim.api.nvim_set_hl(0, "NormalFloat", { ctermbg=0 })
vim.api.nvim_set_hl(0, "EndOfBuffer", { ctermbg=0 })
-- vim.api.nvim_set_hl(0, "lualine_b_normal", { ctermbg=0 })
-- vim.api.nvim_set_hl(0, "lualine_c_normal", { ctermbg=0 })
vim.api.nvim_set_hl(0, "MsgSeparator", { ctermbg=0 })
vim.api.nvim_set_hl(0, "Conceal", { ctermbg=0 })
vim.api.nvim_set_hl(0, "Operator", { ctermbg=0 })
vim.api.nvim_set_hl(0, "Constant", { ctermbg=0 })
vim.api.nvim_set_hl(0, "Character", { ctermbg=0 })
vim.api.nvim_set_hl(0, "BufferLineInfoSelected", { ctermbg=0 })
--vim.api.nvim_set_hl(0, "CursorLineFold", { ctermbg=0 })
--vim.api.nvim_set_hl(0, "StatusLine", { ctermbg=0 })
--vim.api.nvim_set_hl(0, "StatusLineNC", { ctermbg=0 })
--vim.api.nvim_set_hl(0, "Visual", { ctermbg=0 })
--vim.api.nvim_set_hl(0, "SignColumn", { ctermbg=0 })
--vim.api.nvim_set_hl(0, "Folded", { ctermbg=0 })
--vim.api.nvim_set_hl(0, "FoldColumn", { ctermbg=0 })
--vim.api.nvim_set_hl(0, "Pmenu", { ctermbg=0 })
--vim.api.nvim_set_hl(0, "PmenuSbar", { ctermbg=0 })
--vim.api.nvim_set_hl(0, "PmenuThumb", { ctermbg=0 })
--vim.api.nvim_set_hl(0, "TabLine", { ctermbg=0 })
--vim.api.nvim_set_hl(0, "TabLineSel", { ctermbg=0 })
--vim.api.nvim_set_hl(0, "TabLineFill", { ctermbg=0 })
--vim.api.nvim_set_hl(0, "CursorColumn", { ctermbg=0 })
--vim.api.nvim_set_hl(0, "CursorLine", { ctermbg=0 })
--vim.api.nvim_set_hl(0, "ColorColumn", { ctermbg=0 })
vim.api.nvim_set_hl(0, "FloatBorder", { ctermbg=0 })
vim.api.nvim_set_hl(0, "FoldColumn", { ctermbg=0 })

vim.api.nvim_set_hl(0, "LineNr", { ctermfg='White' })
vim.api.nvim_set_hl(0, "Folded", { ctermbg=0 })
vim.api.nvim_set_hl(0, "UfoCursorFoldedLine", { ctermbg=0 })
