return {
    "nvim-treesitter/nvim-treesitter",

    build = ":TSUpdate",

    opts = {
        ensure_installed = {
            "c",
            "python",
            "bash",
        },

        auto_install = true,
    },
}
