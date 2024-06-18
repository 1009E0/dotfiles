return {
  "folke/persistence.nvim",
  event = "BufReadPre", -- this will only start session saving when an actual file was opened
  opts = {
    -- add any custom options here
  },
  config = function()
    require("persistence").setup()
    vim.keymap.set("n", "<leader>ps", [[<cmd>lua require("persistence").load()<cr>]], { desc = "restore the session for the current directory" })
    vim.keymap.set("n", "<leader>pl", [[<cmd>lua require("persistence").load({ last = true })<cr>]], { desc = "restore the last session" })
    vim.keymap.set("n", "<leader>pd", [[<cmd>lua require("persistence").stop()<cr>]], { desc = "stop Persistence" })
  end,
}
