return {
  "tanvirtin/monokai.nvim",
  config = function()
    local monokai = require('monokai')
    local palette = monokai.classic
    monokai.setup {
      palette = {
        base2 = "#000000",
      },
      custom_hlgroups = {
        LineNr = {
          fg = "gray",
        },
      },
      italics = false
    }
    -- inform nvim-tree to load after monokai.nvim
    vim.api.nvim_exec_autocmds("User", { pattern = "MonokaiLoaded" })
    -- vim.opt.statuscolumn = ' %l%s'
    -- vim.opt.signcolumn = "yes:1"
  end
}
