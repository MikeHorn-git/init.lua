return {
  -- === Trivial plugins (inline setup) ===
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.termguicolors = true
      vim.cmd.colorscheme "tokyonight"
    end,
  },

  "ThePrimeagen/vim-be-good",
  "mbbill/undotree",

  -- === Plugins with custom configs ===
  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require "init.configs.harpoon" end,
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = function() return require "init.configs.lualine" end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    branch = "master",
    build = ":TSUpdate",
    opts = function() return require "init.configs.treesitter" end,
  },

  {
    "mason-org/mason.nvim",
    opts = function() return require "init.configs.mason" end,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    opts = function() return require "init.configs.mason_lspconfig" end,
  },

  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function() require "init.configs.telescope" end,
  },

  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = function() return require "init.configs.trouble" end,
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = function() return require "init.configs.which_key" end,
  },

  -- === Core editor / LSP / completion ===
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-nvim-lsp",
    },
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = { "hrsh7th/cmp-nvim-lsp" },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
    },
  },
}
