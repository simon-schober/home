require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "marksman", "clangd", "pylsp", "ts_ls", "jdtls", "dockerls",
  "docker_compose_language_service", "jsonls", "kotlin_language_server", "bashls", "yamlls", "sqls", "nil_ls",
  "rust_analyzer" }

vim.lsp.enable(servers)
vim.lsp.config('jdtls', { cmd = { 'jdtls' } })
vim.lsp.config('rust_analyzer', { cmd = { 'rust-analyzer' } })
vim.lsp.config('html', { cmd = { "vscode-html-language-server", "--stdio" } })
