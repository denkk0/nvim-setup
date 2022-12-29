vim.opt.termguicolors = true
require("bufferline").setup{
    options = {
        numbers = "ordinal",
        max_name_length = 18,
        max_prefix_length = 15,
        tab_size = 18,
        show_buffer_close_icons = true,
        show_close_icon = false,
        show_tab_indicators = true,
        persist_buffer_sort = true,
        separator_style = "thick",
        enforce_regular_tabs = false,
        always_show_bufferline = true,
        sort_by = "incremental_after_current",
    }
}

vim.keymap.set("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>")
vim.keymap.set("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>")
vim.keymap.set("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>")
vim.keymap.set("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>")
vim.keymap.set("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>")
vim.keymap.set("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>")
vim.keymap.set("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>")
vim.keymap.set("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>")
vim.keymap.set("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>")
vim.keymap.set("n", "<leader>0", ":BufferLineGoToBuffer 10<CR>")
vim.keymap.set("n", "<leader>$", ":BufferLineGoToBuffer -1<CR>")
vim.keymap.set("n", "<leader>]", ":BufferLineMoveNext<CR>")
vim.keymap.set("n", "<leader>[", ":BufferLineMovePrev<CR>")

