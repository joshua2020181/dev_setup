local M = {}

M.disabled = {
  n = {
    ["<C-j>"] = "",
  }
}

M.general = {
  n = {
    ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left"},
    ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right"},
    ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down"},
    ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up"},
    ["<C-p>"] = { "<cmd> lua require('fzf-lua').files()<CR>", "fzf files"},
    ["<C-g>"] = { "<cmd> lua require('fzf-lua').lgrep_curbuf()<CR>", "fzf lgrep_curbuf"},
  }
}

return M
