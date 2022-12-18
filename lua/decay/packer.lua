vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packages manager
    use 'wbthomason/packer.nvim'

    -- Startup time improvement
    use 'lewis6991/impatient.nvim'

    -- Startup time measurement
    use 'dstein64/vim-startuptime'

    -- Python indentation
    use 'Vimjas/vim-python-pep8-indent'

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = {
            {'nvim-lua/plenary.nvim'}
        }
    }

    -- Dracula theme
    use {
        'dracula/vim',
        as = 'dracula',
        config = function()
            vim.cmd('colorscheme dracula')
        end
    }

    -- Syntax highlighting
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }

    -- Undo tree
    use 'mbbill/undotree'

    -- LSP
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'},
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

            -- Autocompletion
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'},

            -- Snippets
            {'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }

    -- Github copilot
    use 'github/copilot.vim'

    -- Markdown preview
    use {
        'iamcco/markdown-preview.nvim',
        run = 'cd app && npm install',
        setup = function() vim.g.mkdp_filetypes = { 'markdown' } end,
        ft = { 'markdown' },
    }

    -- Nvim file tree sidebar
    use {
        'nvim-tree/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        tag = 'nightly'
    }

    -- Status line
    use {
        'nvim-lualine/lualine.nvim',
        requires = {
            'kyazdani42/nvim-web-devicons',
            opt = true
        }
    }

    -- Diagnostics pretty list
    use {
        'folke/trouble.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
    }

    -- Gitsigns
    use 'lewis6991/gitsigns.nvim'

    -- Lines indentation
    use 'lukas-reineke/indent-blankline.nvim'

    -- Autopair for brackets, quotes, etc.
    use 'windwp/nvim-autopairs'

    -- Commenting
    use 'terrortylor/nvim-comment'

    -- Tmux integration
    use 'christoomey/vim-tmux-navigator'

    -- Terminal toggle
    use 'akinsho/toggleterm.nvim'

    -- Smooth scrolling
    use 'karb94/neoscroll.nvim'

    -- Pretty notifications
    use 'rcarriga/nvim-notify'
end)

