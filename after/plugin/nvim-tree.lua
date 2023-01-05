vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})


require('nvim-tree').setup({
    disable_netrw = true,
    hijack_netrw = true,
    open_on_setup = true,
    ignore_ft_on_setup = {},
    open_on_tab = false,
    hijack_cursor = true,
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true,
        ignore_list = {}
    },
    system_open = {
        cmd = nil,
        args = {}
    },
    view = {
        width = 30,
        side = 'left',
        adaptive_size = false,
        number = true,
        relativenumber = true,
        mappings = {
            custom_only = false,
            list = {}
        }
    },
    git = {
        enable = true,
        ignore = false
    }
})

