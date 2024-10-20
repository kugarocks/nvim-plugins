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
      },
    }
  end,
}

