local status, wk = pcall(require, 'which-key')
if (not status) then return end

vim.api.nvim_set_hl(0, "WhichKeyFloat", { ctermfg=0,  ctermbg=0 })

wk.setup({
    window = {
        border = 'rounded'
    }
})

local mappings = {
    e = {':NvimTreeToggle<CR>', 'Toggle filetree'},
    t = {':Telescope find_files<CR>', 'Open Telescope'},
    d = {':Dashboard<CR>', 'Open Dashboard'},
}

local opts = {
    prefix = '<leader>'
}

wk.register(mappings, opts)

wk.register({
  b = {
	name = "Buffer",
	d = "Buffer Delete",
	q = "Quit Command"
  },
  t = {
	name = "File Tree",
	e = {':NvimTreeToggle<CR>', 'Another way to Toggle the Filetree'},
	f = {':NvimTreeFocus<CR>', 'Set focus on the Filetree'},
	r = {':NvimTreeRefresh<CR>', 'Refresh the Filetree'}
  }
}, {prefix = "<leader>"})
