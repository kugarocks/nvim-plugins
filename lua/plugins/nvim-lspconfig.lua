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
    lspconfig.intelephense.setup {
      root_dir = lspconfig.util.root_pattern("composer.json", ".git", "."),
      settings = {
        intelephense = {
          completion = {
            enable = true,
            triggerParameterHints = true,
            insertUseDeclaration = true,
            fullyQualifyGlobalConstantsAndFunctions = true,
          },
          format = {
            enable = true
          },
          phpdoc = {
            useFullyQualifiedNames = true,
            returnVoid = false,
          },
          telemetry = {
            enable = false
          },
          diagnostics = {
            enable = true,
            -- undefinedSymbols = true,
            -- undefinedTypes = true,
            -- undefinedFunctions = true,
            -- undefinedConstants = true,
            -- undefinedMethods = true,
            -- undefinedProperties = true,
            -- undefinedVariables = true,
          },
        },
      },
    }

    -- ruby
    lspconfig.solargraph.setup {
      root_dir = lspconfig.util.root_pattern("Gemfile", ".git", "."),
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
