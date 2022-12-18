require('toggleterm').setup{
    open_mapping = [[<c-\>]],
    start_in_insert = true,
    insert_mappings = true,
    direction = 'float',
    float_opts = {
        border = 'double',
        width = 120,
        height = 30,
        winblend = 10,
    }
}

