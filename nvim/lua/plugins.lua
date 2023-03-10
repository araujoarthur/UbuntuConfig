require("lazy").setup(
{
-- Plugins
  -- Gruvbox Theme,
  'sainnhe/gruvbox-material',
  -- Moonfly Theme
  { 
	"bluz71/vim-moonfly-colors", 
	name = "moonfly", 
	lazy = true, 
	priority = 1000 
  },
  -- Nightfly Theme
  { 
	"bluz71/vim-nightfly-colors", 
	name = "nightfly", 
	lazy = true, 
	priority = 1000 
  },
  -- Base16 Theme
  {
	 "RRethy/nvim-base16",
	 name = "nvim-base16",
	 lazy = true
  },
  -- Moonlight Theme
  'shaunsingh/moonlight.nvim',
  -- TreeSitter
  {
	"nvim-treesitter/nvim-treesitter", 
	build = function()
        local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
        ts_update()
    end,
  },
  -- Bufferline
  {
	'akinsho/bufferline.nvim', 
	version = "v3.*", 
	dependencies = 'nvim-tree/nvim-web-devicons'
  },
  -- Nvim Tree
  {
  "nvim-tree/nvim-tree.lua",
	  dependencies = {
	   "nvim-tree/nvim-web-devicons",
	  }
  },
  -- Dashboard
  {
	'glepnir/dashboard-nvim',
	event = 'VimEnter',
	dependencies = {{'nvim-tree/nvim-web-devicons'}}
  },
  -- Telescope
  {
  'nvim-telescope/telescope.nvim', 
  version = '0.1.1',
  dependencies = {{'nvim-lua/plenary.nvim'}}
  },
  -- Lua Line
  {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' }
  },
  'norcalli/nvim-colorizer.lua',
  'windwp/nvim-ts-autotag',
  'p00f/nvim-ts-rainbow',
  'windwp/nvim-autopairs',
  'folke/which-key.nvim',
  'lukas-reineke/indent-blankline.nvim',
  -- The LSP stuff
  'neovim/nvim-lspconfig',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'ray-x/lsp_signature.nvim',
  'hrsh7th/cmp-vsnip',
  {
    'hrsh7th/vim-vsnip',
    event = 'BufWinEnter'
  },
  'onsails/lspkind.nvim',
  {
    'akinsho/toggleterm.nvim',
    version = '*'
  },
  -- NeoProj Project Manager
  "pluffie/neoproj",
},
{
-- Options
  ui = {
	border = 'rounded'
  }
})
