-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    -- optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
        { "<leader>lg", "<cmd>LazyGit<cr>", desc = "LazyGit" }
    }
  },
  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function ()
      require('toggleterm').setup{
        open_mapping = [[<c-\>]],
        size = 20,
        winbar = {
          enabled = false,
          name_formatter = function(term)
            return term.name
          end
        }
      }
    end
  },
  {
  "dzfrias/arena.nvim",
    event = "BufWinEnter",
    -- Calls `.setup()` automatically
    config = true,
  },
  {
    "kelly-lin/ranger.nvim",
    config = function()
      require("ranger-nvim").setup({ replace_netrw = true })
      vim.api.nvim_set_keymap("n", "<leader>ef", "", {
        noremap = true,
        callback = function()
          require("ranger-nvim").open(true)
        end,
      })
    end,
  },
  {
    'tribela/transparent.nvim',
    config = function ()
      require('transparent').setup{}
    end
  },
}
