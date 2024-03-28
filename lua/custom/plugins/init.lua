-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

    -- Copilot
    {
    'Github/copilot.vim',
    config = function()
        vim.g.copilot_filetypes = {markdown = true}
    end,
    },

    -- Markdown Preview install without yarn or npm
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function() vim.fn["mkdp#util#install"]() end,
        config = function()
            vim.keymap.set("n", "<leader>mp" , vim.cmd.MarkdownPreviewToggle )
    end
    },
    --Catppuccin
    { "catppuccin/nvim", name = "catppuccin", priority = 1000,
        config = function()
        vim.cmd.colorscheme 'catppuccin'
        vim.api.nvim_set_hl(0,"Normal", {bg = "none"})
        vim.api.nvim_set_hl(0,"NormalFloat", {bg = "none"})
    end,
    },

}
