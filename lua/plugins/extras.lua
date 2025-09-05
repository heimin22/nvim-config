return {
  -- file explorer with TS icons
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      },
    },
  },

  -- better quickfix for TS errors
  {
    "folke/trouble.nvim",
    opts = {
      modes = {
        symbols = {
          win = { position = "right" },
        },
      },
    },
  },

  -- auto pairs for TS
  {
    "windwp/nvim-ts-autotag",
    opts = {
      filetypes = {
        "html",
        "javascript",
        "typescript",
        "javascriptreact",
        "typescriptreact",
        "svelte",
        "vue",
        "tsx",
        "jsx",
        "rescript",
        "xml",
        "php",
        "markdown",
        "astro",
        "glimmer",
        "handlebars",
        "hbs",
      },
    },
  },

  -- TS import sorting
  {
    "isak102/telescope-git-file-history.nvim",
    dependencies = { "nvim-telescope/telescope.nvim" },
    opts = {},
  },
}
