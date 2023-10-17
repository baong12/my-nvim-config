local schemes = {
  tokyonight = {
    "folke/tokyonight.nvim",
    commit = "e52c41314e83232840d6970e6b072f9fba242eb9",
  },
  gruvbox = {
    "morhetz/gruvbox",
  },
  sonokai = {
    "sainnhe/sonokai",
  }
}

local M = schemes.sonokai
M.name = "sonokai"
M.lazy = false    -- make sure we load this during startup if it is your main colorscheme
M.priority = 1000 -- make sure to load this before all the other start plugins

function M.config()
  if M.name == "gruvbox" then
    vim.cmd("let g:gruvbox_contrast_dark = 'hard'")
  end

  if M.name == "sonokai" then
    vim.cmd([[
      if has('termguicolors')
        set termguicolors
      endif
    ]])
    vim.cmd("let g:sonokai_style = 'espresso'")
  end

  local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
  if not status_ok then
    return
  end
end

return M
