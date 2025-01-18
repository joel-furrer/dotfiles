local lspconfig = require("lspconfig")

lspconfig.nixd.setup({
    cmd = { "nixd" }, -- Stelle sicher, dass nixd im PATH ist
    filetypes = { "nix" }, -- Unterstützte Dateitypen
    root_dir = lspconfig.util.root_pattern(".git", "flake.nix", "default.nix"),
    on_attach = function(client, bufnr)
        local opts = { noremap = true, silent = true }
        -- Beispiel-Keybindings
        vim.api.nvim_buf_set_keymap(bufnr, "n", "gd", "<Cmd>lua vim.lsp.buf.definition()<CR>", opts)
        vim.api.nvim_buf_set_keymap(bufnr, "n", "K", "<Cmd>lua vim.lsp.buf.hover()<CR>", opts)
    end,
})

