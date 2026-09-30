vim.lsp.config("matlab_ls", {
    cmd = { "matlab-language-server", "--stdio" },

    filetypes = { "matlab" },

    root_markers = { ".git" },

    settings = {
        MATLAB = {
            installPath = "/home/ashwin/Applications/MATLAB/R2026a",
            indexWorkspace = true,
            matlabConnectionTiming = "onStart",
            telemetry = false,
        },
    },
})

vim.lsp.enable("matlab_ls")
