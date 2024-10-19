return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")

    vim.fn.sign_define("DiagnosticSignError", { text = "", texthl = "" })
    vim.fn.sign_define("DiagnosticSignWarn", { text = "", texthl = "" })
    vim.fn.sign_define("DiagnosticSignInfo", { text = "", texthl = "" })
    vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "" })

    -- go
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
    }

    -- python
    lspconfig.pyright.setup{
      settings = {
        pyright = {
          typeCheckingMode = "basic",  -- "strict" or "off"
          useLibraryCodeForTypes = true,
          autoSearchPaths = true,
          diagnosticMode = "workspace",
        },
      },
    }

    -- php
    lspconfig.intelephense.setup{
      settings = {
        intelephense = {
          format = {
            enable = true,  -- enable format
          },
          diagnostics = {
            enable = true,  -- enable diagnostics
          },
        },
      },
    }

    -- ruby
    lspconfig.solargraph.setup {
      settings = {
        solargraph = {
          diagnostics = true,
          completion = true,
          hover = true,
          formatting = true,
          symbols = true,
          definitions = true,
          rename = true,
          references = true,
          folding = true,
        },
      },
    }
  end,
}
