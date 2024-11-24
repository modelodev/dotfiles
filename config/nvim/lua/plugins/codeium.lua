local M = {
  "Exafunction/codeium.vim",
  config = function()
    -- Change '<C-g>' here to any keycode you like.
    vim.keymap.set("i", "<C-l>", function()
      return vim.fn["codeium#Accept"]()
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<c-a>", function()
      return vim.fn["codeium#CycleCompletions"](1)
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<c-z>", function()
      return vim.fn["codeium#CycleCompletions"](-1)
    end, { expr = true, silent = true })
    vim.keymap.set("i", "<c-x>", function()
      return vim.fn["codeium#Clear"]()
    end, { expr = true, silent = true })
  end,
  keys = {
    {
      "<leader>c",
      "<Cmd>call codeium#Chat()<CR>",
      { noremap = true, silent = true },
      mode = "n",
      desc = "🤖 Codeium Chat",
    },
  },
}

local A = {
  "Exafunction/codeium.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "hrsh7th/nvim-cmp",
  },
  config = function()
    require("codeium").setup({
      enable_chat = true,
    })
  end,
}

return M
