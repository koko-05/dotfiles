return {
  { "catppuccin/nvim" },
  { "numToStr/FTerm.nvim" },
  { "folke/zen-mode.nvim",
    opts= {
      window = {
        options = {
          signcolumn = "no",
          -- number = false,
          -- relativenumber = false,
          cursorline = false,
        }
      },

      plugins = {
      options = {
        numberwidth = 20,
        columns=80,
        enabled = true,
        ruler = false, -- disables the ruler text in the cmd line area
        showcmd = false, -- disables the command in the last line of the screen
        laststatus = 0, -- turn off the statusline in zen mode
      },
        lualine = { enabled = false }
      }
    }
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha",
    },
  },

  { "folke/trouble.nvim", enabled = false },
  { "mfussenegger/nvim-lint", enabled = false },
  { "rcarriga/nvim-notify", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },
  { "folke/noice.nvim", enabled = false },
  { "folke/which-key.nvim", enabled = false },
  { "nvimdev/dashboard-nvim", enabled = false },
  { "neovim/nvim-lspconfig", enabled = false },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },
}
