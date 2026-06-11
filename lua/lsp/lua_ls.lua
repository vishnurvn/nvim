vim.lsp.config("lua_ls", {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = { ".luarc.json", ".luarc.jsonc", ".git" },
  settings = {
    Lua = {
      runtime = { version = "LuaJIT" },
      diagnostics = { globals = { "vim" } },
      workspace = {
        library = vim.api.nvim_get_runtime_file("", true),
        checkThirdParty = false,
      },
    },
  },
})

vim.lsp.config("rust_analyzer", {
  cmd = { "rust-analyzer" },
  filetypes = { "rust" },
  root_markers = { "Cargo.toml", ".git" },
})

vim.lsp.config("basedpyright", {
  cmd = { "basedpyright-langserver", "--stdio" },
  root_dir = vim.fn.getcwd(),
  filetypes = { "python" },
  root_markers = { { "pyproject.toml", "setup.py" }, ".git" },
})

vim.lsp.enable("lua_ls")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("basedpyright")
