require('toggleterm').setup{
    open_mapping = [[<c-\>]],
    start_in_insert = true,
    insert_mappings = true,
    direction = 'float',
    float_opts = {
        border = 'double',
        width = function()
            return math.floor(vim.o.columns * 0.8)
        end,
        height = function()
            return math.floor(vim.o.lines * 0.8)
        end,
        winblend = 10,
    }
}

