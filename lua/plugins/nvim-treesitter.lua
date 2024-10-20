return {
  "nvim-treesitter/nvim-treesitter",
  run = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      -- ensure_installed = "all", -- Install all parsers or specify a list
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    }
  end,
}

