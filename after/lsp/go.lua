require("go").setup({})

local group = vim.api.nvim_create_augroup("GoFormat", { clear = true })

vim.api.nvim_create_autocmd("BufWritePre", {
    group = group,
    pattern = "*.go",
    callback = function()
        require("go.format").goimports()
    end,
})
