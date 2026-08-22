-- lua/plugins/lsp.lua

return {
    "neovim/nvim-lspconfig",

    config = function()
        vim.lsp.enable({
            "clangd",
            -- "gopls",
	    -- "rust_analyzer",
            "pyright",
            "bashls",
            "lua_ls",
        })
    end,
}
