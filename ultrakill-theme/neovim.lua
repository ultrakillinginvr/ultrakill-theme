return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#020000",
                bg_dark = "#020000",
                bg_highlight = "#630000",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#ffffff",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#ffffff",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#630000",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#fd0202",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#ff0000",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#ffff00",
                -- green: Comments, strings, success states, git additions
                green = "#1a9200",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#ff0000",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#ff0000",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#d10a0a",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#ff0000",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
