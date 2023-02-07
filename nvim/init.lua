  vim.g.mapleader = " "
vim.o.shiftround = true
vim.o.shiftwidth = 2
vim.o.number = true
vim.o.cursorlineopt = 'number'
vim.o.tabstop = 4
vim.wo.number = true

vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.opt.title = true
vim.opt.autoindent = true
vim.opt.hlsearch = true


vim.opt.showcmd = true
vim.opt.cmdheight = 1

vim.opt.splitbelow = false
vim.opt.splitright = false

vim.opt.termguicolors = true


vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
vim.o.statuscolumn = '%=%l%s%#FoldColumn#%{foldlevel(v:lnum) > foldlevel(v:lnum - 1) ? (foldclosed(v:lnum) == -1 ? " " : " ") : "  " }%*'

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
	lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

require('plugins')
require('keymaps')
require('style')
