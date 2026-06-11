return {
  {
    "nvim-telescope/telescope.nvim",
    version = "*",
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- optional but recommended
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    keys = {
      { "<leader>f", "<cmd>Telescope find_files<cr>", desc = "Find files" },
      { "<leader>gr", "<cmd>Telescope lsp_references<cr>", desc = "LSP References" },
      { "<leader>gd", "<cmd>Telescope lsp_definitions<cr>", desc = "LSP Definitions" },
      { "<leader>ca", "<cmd>Telescope lsp_code_actions<cr>", desc = "LSP Code Actions" },
      { "<leader>ds", "<cmd>Telescope lsp_document_symbols<cr>", desc = "LSP Document symbols" },
      { "<leader>ws", "<cmd>Telescope lsp_workspace_symbols<cr>", desc = "LSP Workspace symbols" },
      { "<leader>fd", "<cmd>Telescope diagnostics<cr>", desc = "LSP get file diagnostics" },
    },
    opts = {
      defaults = {
        file_ignore_patterns = {
          "%.git/",
        },
      },
      pickers = {
        find_files = {
          hidden = false,
        },
        live_grep = {
          additional_args = function(raw_opts)
            return { "--hidden=false" }
          end,
        },
      },
    },
  },
}
