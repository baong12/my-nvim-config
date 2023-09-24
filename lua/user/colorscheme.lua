local schemes = {
  tokyonight = {
    "folke/tokyonight.nvim",
    commit = "e52c41314e83232840d6970e6b072f9fba242eb9",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
  },
  gruvbox = {
    "morhetz/gruvbox",
    lazy = false,    -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
  }
}

local M = schemes.gruvbox
M.name = "gruvbox"
function M.config()
 if M.name == "gruvbox" then
  vim.cmd("let g:gruvbox_contrast_dark = 'hard'")
 end

  local status_ok, _ = pcall(vim.cmd.colorscheme, M.name)
  if not status_ok then
    return
  end
end

return M
