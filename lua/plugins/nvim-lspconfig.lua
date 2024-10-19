return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    lspconfig.gopls.setup {
      settings = {
        gopls = {
          staticcheck = true,
          usePlaceholders = true,
          analyses = {
            unusedparams = true,
            unreachable = true,
          },
        },
      },
      on_attach = function(client, bufnr)
        vim.fn.sign_define("DiagnosticSignError", { text = "", texthl = "" })
        vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "" })
        vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "" })
        vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "" })
      end,
    }
  end,
}
