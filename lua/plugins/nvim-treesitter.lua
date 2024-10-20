return {
  "nvim-treesitter/nvim-treesitter",
  run = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = { "ruby" },
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
        -- When input `if foo.bar`, the indent will be wrong
        disable = { "ruby" },
      },
    }
  end,
}

