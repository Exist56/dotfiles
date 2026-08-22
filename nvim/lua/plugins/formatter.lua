return {
    "stevearc/conform.nvim",

    opts = {
        formatters_by_ft = {
            c = { "clang_format" },
            cpp = { "clang_format" },
            -- go = { "gofmt" },
            -- rust = { "rustfmt" },
            python = { "black" },
            lua = { "stylua" },
        },
    },
}
