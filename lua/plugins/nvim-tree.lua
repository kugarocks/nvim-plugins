return {
  "kyazdani42/nvim-tree.lua",
  dependencies = {
    "kyazdani42/nvim-web-devicons", -- icons dependency
  },
  -- Must be loaded after monokai.nvim
  -- Otherwise, the icons color may be wrong
  event = "User MonokaiLoaded",
  config = function()
    require("nvim-tree").setup {
      renderer = {
        icons = {
          show = {
            file = true,
            folder = true,
            git = true,
          },
        },
      },
      filters = {
        dotfiles = true, -- show hidden files if false, hide if true
      },
    }
  end
}
