require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "marksman", "clangd", "pylsp", "ts_ls", "jdtls", "jsonls", "bashls", "yamlls", "sqls", "nil_ls" }
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers 
