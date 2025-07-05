require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "marksman", "clangd", "pylsp", "ts_ls", "jdtls", "dockerls", "docker_compose_language_service", "jsonls", "kotlin_language_server", "bashls", "yamlls", "sqls", "nil_ls", "rust_analyzer" }

vim.lsp.enable(servers)
vim.lsp.config('jdtls', { cmd = { 'jdtls' } })
vim.lsp.config('rust_analyzer', { cmd = { 'rust-analyzer' } })

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
