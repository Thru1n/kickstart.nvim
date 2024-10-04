return {

    -- Copilot
    {
        'Github/copilot.vim',
        config = function()
            vim.g.copilot_filetypes = {markdown = true}
        end,
    },
}