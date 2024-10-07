-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "monochrome",

  -- hl_override = {
  -- 	Comment = { italic = true },
  -- 	["@comment"] = { italic = true },
  -- },
}

M.ui = {
  cmp = {
  },
  statusline = {
    theme = "default", -- default/vscode/vscode_colored/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "default",
    order = nil, --{"mode", "f", "git", "%=", "lsp_msg", "%=", "lsp", "cwd"},
    modules = {
      f = "%F"
    },
  },

  telescope = { style = "bordered" }, -- borderless / bordered
}


M.term = {
  winopts = { number = false },
  sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
  cmd = "neofetch",
  float = {
    relative = "editor",
    row = 0.3,
    col = 0.25,
    width = 0.5,
    height = 0.4,
    border = "double",
  },
}



M.colorify = {
  enabled = true,
  mode = "virtual", -- fg, bg, virtual
  virt_text = "󱓻 ",
  highlight = { hex = true, lspvars = true },
}


M.lsp = { signature = true }

M.nvdash = {
  load_on_startup = true,
  header = {
    "                            ",
    "     ▄▄         ▄ ▄▄▄▄▄▄▄   ",
    "   ▄▀███▄     ▄██ █████▀    ",
    "   ██▄▀███▄   ███           ",
    "   ███  ▀███▄ ███           ",
    "   ███    ▀██ ███           ",
    "   ███      ▀ ███           ",
    "   ▀██ █████▄▀█▀▄██████▄    ",
    "     ▀ ▀▀▀▀▀▀▀ ▀▀▀▀▀▀▀▀▀▀   ",
    "                            ",
    "     Powered By  eovim    ",
    "                            ",
  },

  buttons = {
    { txt = "  Find File", keys = "Spc f f", cmd = "Telescope find_files" },
    { txt = "  Recent Files", keys = "Spc f o", cmd = "Telescope oldfiles" },
    { txt = "󰈭  Find Word", keys = "Spc f w", cmd = "Telescope live_grep" },
    { txt = "󱥚  Themes", keys = "Spc t h", cmd = ":lua require('nvchad.themes').open()" },
    { txt = "  Mappings", keys = "Spc c h", cmd = "NvCheatsheet" },

    { txt = "─", hl = "NvDashLazy", no_gap = true, rep = true },

    {
      txt = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime) .. " ms"
        return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
      end,
      hl = "NvDashLazy",
      no_gap = true,
    },

    { txt = "─", hl = "NvDashLazy", no_gap = true, rep = true },
  },
}


M.mason = { pkgs = { "shellcheck" } }

return M
