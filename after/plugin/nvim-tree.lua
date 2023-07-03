vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.api.nvim_set_keymap('n', '<C-b>', ':NvimTreeToggle<CR>', {noremap = true, silent = true})

-- change folder arrow color
vim.cmd('highlight NvimTreeIndentMarker guifg=#6272A4')

require('nvim-tree').setup({
    disable_netrw = true,
    hijack_netrw = true,
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

-- open on setup
local function open_nvim_tree(data)
    local directory = vim.fn.isdirectory(data.file) == 1
    if not directory then
        return
    end
    vim.cmd.cd(data.file)
    require('nvim-tree.api').tree.open()
end
vim.api.nvim_create_autocmd({ 'VimEnter' }, { callback = open_nvim_tree })
