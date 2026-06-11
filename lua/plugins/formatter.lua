return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<leader>F",
      function()
        require("conform").format({ async = true, lsp_format = "fallback" })
      end,
      mode = "n",
      desc = "Format buffer",
    },
  },
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
    },
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters = {
      stylua = {
        prepend_args = { "--indent-width", "2", "--indent-type", "Spaces" },
      },
    },
  },
}
