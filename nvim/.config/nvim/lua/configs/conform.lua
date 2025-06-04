require("conform").setup {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettierd" },
    html = { "prettierd" },
    python = { "autopep8" },
    yaml = { "prettierd" },
    javascript = { "prettierd" },
    javascriptreact = { "prettierd" },
    typescript = { "prettierd" },
    typescriptreact = { "prettierd" },
    json = { "prettierd" },
    jsonc = { "prettierd" },
  },
  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}
