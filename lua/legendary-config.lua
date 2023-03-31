local telescope_builtin = require('telescope.builtin')

require('legendary').setup({
    keymaps = {
        ------------------------------------------------------------------------
        -- For Autoformat
        ------------------------------------------------------------------------
        { '<Leader>f', ':Autoformat<cr>', description = 'Format code' },

        ------------------------------------------------------------------------
        -- For Barbar
        ------------------------------------------------------------------------
        { '<A-,>', '<cmd>BufferPrevious<cr>', description = 'Previous tab' },
        { '<A-.>', '<cmd>BufferNext<cr>', description = 'Next tab' },
        { '<A-<>', '<cmd>BufferMovePrevious<cr>', description = 'Move tab left' },
        { '<A->>', '<cmd>BufferMoveNext<cr>', description = 'Move tab right' },
        { '<A-w>', '<cmd>BufferClose<cr>', description = 'Close tab' },
        { '<A-1>', '<cmd>BufferGoto 1<cr>', description = 'Go to tab 1' },
        { '<A-2>', '<cmd>BufferGoto 2<cr>', description = 'Go to tab 2' },
        { '<A-3>', '<cmd>BufferGoto 3<cr>', description = 'Go to tab 3' },
        { '<A-4>', '<cmd>BufferGoto 4<cr>', description = 'Go to tab 4' },
        { '<A-5>', '<cmd>BufferGoto 5<cr>', description = 'Go to tab 5' },
        { '<A-6>', '<cmd>BufferGoto 6<cr>', description = 'Go to tab 6' },
        { '<A-7>', '<cmd>BufferGoto 7<cr>', description = 'Go to tab 7' },
        { '<A-8>', '<cmd>BufferGoto 8<cr>', description = 'Go to tab 8' },
        { '<A-9>', '<cmd>BufferGoto 9<cr>', description = 'Go to tab 9' },
        { '<A-0>', '<cmd>BufferGoto 0<cr>', description = 'Go to last tab' },


        ------------------------------------------------------------------------
        -- For Floaterm
        ------------------------------------------------------------------------
        -- {"<leader>ft", ":FloatermNew --name=myfloat --height=0.8 --width=0.7 --autoclose=2 fish <CR> ", description = 'Open terminal popup' },
        -- { "t", ":FloatermToggle myfloat<CR>"}
        -- map('t', "<Esc>", "<C-\\><C-n>:q<CR>")

        ------------------------------------------------------------------------
        -- For Telescope
        ------------------------------------------------------------------------
        { '<leader>ff', telescope_builtin.find_files,  description = 'Find files' },
        { '<leader>fg', telescope_builtin.live_grep,  description = 'Grep' },
        { '<leader>fb', telescope_builtin.buffers,  description = 'Find buffer' },
        { '<leader>fh', telescope_builtin.help_tags,  description = 'Search help tag' },

        ------------------------------------------------------------------------
        -- For Trouble
        ------------------------------------------------------------------------
        { "<leader>xx", "<cmd>TroubleToggle<cr>", description='Show diags' },
        { "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", description='Show diags for workspace' },
        { "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", description='Show diags for buffer' },
        { "<leader>xl", "<cmd>TroubleToggle loclist<cr>", description='Show location list' },
        { "<leader>xq", "<cmd>TroubleToggle quickfix<cr>", description='Show quickfix list' },
        --{ "gR", "<cmd>TroubleToggle lsp_references<cr>", description='' },

        ------------------------------------------------------------------------
        -- For Nvim Tree
        ------------------------------------------------------------------------
        { "<leader>t", "<cmd>NvimTreeToggle<cr>", description='Toggle file browser'},
        { "<leader>tf", "<cmd>NvimTreeFocus<cr>", description='Toggle file browser'},
    }
})
