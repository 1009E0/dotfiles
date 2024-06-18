return {
    'goolord/alpha-nvim',
    event = "VimEnter",
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                     ]],
        [[       ████ ██████           █████      ██                     ]],
        [[      ███████████             █████                             ]],
        [[      █████████ ███████████████████ ███   ███████████   ]],
        [[     █████████  ███    █████████████ █████ ██████████████   ]],
        [[    █████████ ██████████ █████████ █████ █████ ████ █████   ]],
        [[  ███████████ ███    ███ █████████ █████ █████ ████ █████  ]],
        [[ ██████  █████████████████████ ████ █████ █████ ████ ██████ ]],
        [[                                                                       ]],
        [[                                                                       ]],
        [[                                                                       ]],
      }
-- Set menu
      dashboard.section.buttons.val = {
          dashboard.button( "e", "  > New file" , ":ene <BAR> startinsert <CR>"),
          dashboard.button( "f", "  > Find file", ":Telescope find_files<CR>"),
          dashboard.button( "r", "  > Recent file"   , ":Telescope oldfiles<CR>"),
          dashboard.button( "g", "  > Find text", ":Telescope live_grep <CR>"),
          dashboard.button( "c", "  > Config", ":e $MYVIMRC <CR>"),
          dashboard.button( "s", "  > Restore Session", [[:lua require("persistence").load() <cr>]]),
          dashboard.button( "l", "󰒲  > Lazy", ":Lazy<CR>"),
          dashboard.button( "q", "  > Quit", ":qa<CR>"),
      }
      alpha.setup(dashboard.opts)

      require("alpha").setup(dashboard.opts)
    end,
}
