return {
  -- 1) GitHub-nvim-theme
  {
    "projekt0n/github-nvim-theme",
    config = function()
      require("github-theme").setup({
        options = {
          transparent = true,
          terminal_colors = true,
          dim_inactive = true,
          module_default = true,
          styles = {
            commentrs = "italic",
            keywords = "bold",
            types = "italic,bold",
          },
        },
      })
      vim.cmd("colorscheme github_dark_default")
    end,
  },
}
