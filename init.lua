-----------------------------------------------------------------------
-- Leader
-----------------------------------------------------------------------
vim.g.mapleader = ','


-----------------------------------------------------------------------
-- Disable netrw (default file browser)
-----------------------------------------------------------------------
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-----------------------------------------------------------------------
-- Colors
-----------------------------------------------------------------------
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-----------------------------------------------------------------------
-- Line numbers
-----------------------------------------------------------------------
vim.opt.number = true
vim.opt.relativenumber = true

-----------------------------------------------------------------------
-- Searching
-----------------------------------------------------------------------
vim.opt.hlsearch = true
vim.opt.incsearch = true

-----------------------------------------------------------------------
-- Tabs
-----------------------------------------------------------------------
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-----------------------------------------------------------------------
-- Autoload file changes
-----------------------------------------------------------------------
vim.opt.autoread = true

-----------------------------------------------------------------------
-- Visible whitespace
-----------------------------------------------------------------------
vim.opt.listchars = {trail = '·', tab = '»·'}
vim.opt.list = true

-----------------------------------------------------------------------
-- Plugins
-----------------------------------------------------------------------
local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

-- LSP, debugger manager
Plug 'williamboman/mason.nvim'

-- Integrate Mason with nvim-lspconfig
Plug 'williamboman/mason-lspconfig.nvim'

-- Config for LSP servers
Plug 'neovim/nvim-lspconfig'

-- Rust tools
Plug 'simrat39/rust-tools.nvim'
Plug 'nvim-treesitter/nvim-treesitter'

-- Completion framework
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
Plug 'hrsh7th/cmp-nvim-lua'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'
Plug 'm-demare/hlargs.nvim'

-- Debugging
Plug 'puremourning/vimspector'

-- Terminal popup
Plug 'voldikss/vim-floaterm'

-- Utility functions
Plug 'nvim-lua/plenary.nvim'

-- Finding things
Plug 'BurntSushi/ripgrep'
Plug 'nvim-telescope/telescope.nvim'

-- File browser
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'

-- Bracket matching
Plug 'windwp/nvim-autopairs'

-- Commenting
Plug 'numToStr/Comment.nvim'

-- Show current cursor position after jump
Plug 'danilamihailov/beacon.nvim'

-- diags/results/telescope results
Plug 'folke/trouble.nvim'

-- Color scheme
Plug 'tanvirtin/monokai.nvim'

vim.call('plug#end')

-----------------------------------------------------------------------
-- Utility functions
-----------------------------------------------------------------------
-- key mapping helper
function map(mode, lhs, rhs, opts)
    local options = { noremap = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-----------------------------------------------------------------------
-- Requires
-----------------------------------------------------------------------
require("autopairs-config")
require("comment-config")
require("completion-config")
require("diags-config")
require("floaterm-config")
require("hlargs-config")
require("mason-config")
require("monokai-config")
require("rust-tools-config")
require("tree-config")
require("treesitter-config")
require("trouble-config")
require("vimspector-config")
