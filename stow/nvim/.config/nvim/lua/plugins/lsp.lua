
return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls",
                "marksman" ,
                "pyright",
                "clangd",
                "bashls",
                "jsonls",
                "yamlls",
                "tombi"
            },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            vim.lsp.config("lua_ls", { settings = { }, })
            vim.lsp.enable("lua_ls")
            vim.lsp.config("marksman", {
                settings = {},
            })
            vim.lsp.enable("marksman")
            vim.lsp.config("pyright", {
                settings = {},
            })
            vim.lsp.enable("pyright")
            vim.lsp.config("clangd", {
                settings = {},
            })
            vim.lsp.enable("clangd")
            vim.lsp.config("bashls", {
                settings = {},
            })
            vim.lsp.enable("bashls")
            vim.lsp.config("jsonls", {
                settings = {},
            })
            vim.lsp.enable("jsonls")
            vim.lsp.config("yamlls", {
                settings = {},
            })
            vim.lsp.enable("yamlls")
            vim.lsp.config("tsserver", {
                settings = {},
            })
            vim.lsp.enable("tsserver")
            vim.api.nvim_create_autocmd("LspAttach", {
                callback = function(args)
                    local bufnr = args.buf
                    local opts = { buffer = bufnr }
                    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
                    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
                    vim.keymap.set({"n", "v"}, "<leader>ca", vim.lsp.buf.code_action, opts)
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
                    vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol, opts)
                    vim.keymap.set("n", "<leader>vd", vim.diagnostic.open_float, opts)
                    vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, opts)
                    vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references, opts)
                    vim.keymap.set("n", "<leader>vrn", vim.lsp.buf.rename, opts)
                    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help, opts)
                end,
            })
        end,
    },
}
