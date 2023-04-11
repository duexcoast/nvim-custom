---@type MappingsTable
local M = {}

M.general = {
  i = {
    ["<S-CR>"] = {"<ESC>o", "insert line below"},
  },
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>w"] = { ":w <CR>", "Write" },
    ["<leader>q"] = {"<CMD>Bdelete this<CR>" },
    ["<leader>uh"] = { ":noh <CR>", "clear highlights" },
  },
}

M.splits = {
  n = {
    ["<leader>sv"] = {"<C-w>v", "split vertical"},
    ["<leader>sh"] = {"<C-w>s", "split horizontal"},
  }
}

M.eft = {
  n = {
    f = { "<Plug>(eft-f)", "eft-f" },
    F = { "<Plug>(eft-F)", "eft-F" },
    t = { "<Plug>(eft-t)", "eft-t" },
    T = { "<Plug>(eft-T)", "eft-T" },
    [";"] = { "<Plug>(eft-repeat)", "eft-repeat" },
  },
}

M.accelerated_jk = {
  n = {
    j = { "<Plug>(accelerated_jk_gj)", "accelerated gj movement" },
    k = { "<Plug>(accelerated_jk_gk)", "accelerated gk movement" },
  },
}

M.hop = {
  n = {
    ["<leader><leader>w"] = { "<cmd> HopWord <CR>", "hint all words" },
    ["<leader>o"] = { "<cmd> HopWord <CR>", "hint all words" },
    ["<leader><leader>j"] = { "<cmd> HopLine <CR>", "hint line" },
    ["<leader><leader>k"] = { "<cmd> HopLine <CR>", "hint line" },
  },
}

M.toggleterm = {
  n = {
    ["<leader>g"] = {"<cmd>lua Lazygit_toggle()<CR>", "Open LazyGit in Floating Terminal"},
    ["<C-p>"] = {"<cmd> ToggleTerm direction=float<CR>"},
  },
  t = {
    ["<C-p>"] = {"<cmd> ToggleTerm direction=float<CR>"},
    ["<ESC>"] = { "<C-\\><C-n>", opts = { buffer = 0 }, },
    ["<C-h>"] = { "<Cmd>wincmd h<CR>", opts = { buffer = 0 }, },
    ["<C-j>"] = { "<Cmd>wincmd j<CR>", opts = { buffer = 0 }, },
    ["<C-k>"] = { "<Cmd>wincmd k<CR>", opts = { buffer = 0 }, },
    ["<C-l>"] = { "<Cmd>wincmd l<CR>", opts = { buffer = 0 }, },
    ["<C-w>"] = { "<C-\\><C-n><C-w>", opts = { buffer = 0 }, },
  },
}

-- more keybinds!

return M
