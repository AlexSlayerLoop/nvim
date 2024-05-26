local opts = {
  ensure_install = {
    "efm",
    "lua_ls",
    "pyright",
    "bashls",
    "tsserver",
    "emmet_ls",
    "jsonls",
    "dockerls",
  },
  automatic_installation = true,
}

return {
  "williamboman/mason-lspconfig.nvim",
  opts = opts,
  event = "BufReadPre",
  dependencies = "williamboman/mason.nvim"
}
