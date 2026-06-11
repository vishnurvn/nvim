return {
  "saghen/blink.cmp",
  dependencies = { "rafamadriz/friendly-snippets" },

  version = "1.*",

  opts = {
    keymap = {
      preset = "default",
      ["<Tab>"] = { "select_next", "fallback" },
      ["<S-Tab>"] = { "select_prev", "fallback" },
      ["<C-space>"] = {
        function(cmp)
          cmp.show({ providers = { "snippets" } })
        end,
      },
      ["<cr>"] = { "accept", "fallback" },
    },

    appearance = {
      nerd_font_variant = "mono",
    },

    completion = { documentation = { auto_show = true }, ghost_text = { enabled = true } },

    sources = {
      default = { "lsp", "path", "snippets", "buffer" },
    },

    fuzzy = { implementation = "prefer_rust_with_warning" },
  },
  opts_extend = { "sources.default" },
}
