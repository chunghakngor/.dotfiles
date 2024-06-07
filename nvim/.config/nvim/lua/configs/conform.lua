local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    typescript = { "prettier" },
    css = { "prettier" },
    html = { "prettier" },
    python = { "autopep8" },
    yaml = { "prettier" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

require("conform").setup(options)
