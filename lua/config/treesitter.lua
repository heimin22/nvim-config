require("nvim-treesitter.configs").setup({
  ensure_installed = { "typescript", "tsx", "javascript", "json", "html", "css" },
  highlight = { enable = true },
  indent = { enable = true },
})
