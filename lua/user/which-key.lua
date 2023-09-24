local M = {
  "folke/which-key.nvim",
  commit = "5224c261825263f46f6771f1b644cae33cd06995",
  event = "VeryLazy",
}

function M.config()
  local wk = require("which-key")
  wk.setup {}

  local n_opts = {
    mode = "n",
    prefix = "<leader>",
    nowait = true,
  }

  local v_opts = {
    mode = "v",
    prefix = "<leader>",
    nowait = true,
  }

  -- Normal mode
  wk.register({
    [";"] = { "<cmd>Alpha<CR>", "Dashboard" },
    ["w"] = { "<cmd>w!<CR>", "Save" },
    ["q"] = { "<cmd>confirm q<CR>", "Quit" },
    ["/"] = "Comment toggle current line",
    ["f"] = {
      "Find",
      ["f"] = "Find Files",
      ["t"] = "Live Grep",
      ["p"] = "Projects",
      ["b"] = "Buffers",
    },
    ["g"] = {
      "Git",
      ["g"] = "LazyVim",
    },
    ["d"] = {
      "Debug",
      ["b"] = "toggle_breakpoint()",
      ["c"] = "continue()",
      ["i"] = "step_into()",
      ["o"] = "step_over()",
      ["O"] = "step_out()",
      ["r"] = "repl.toggle()",
      ["l"] = "run_last()",
      ["u"] = "toggle()",
      ["t"] = "terminate()",
    },
    ["l"] = "Lsp"
  }, n_opts)

  wk.register({
    ["/"] = "Comment toggle linewise",
  }, v_opts)
end

return M
