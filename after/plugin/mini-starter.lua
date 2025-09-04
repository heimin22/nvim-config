local starter_ok, starter = pcall(require, "mini.starter")
if not starter_ok then
  return
end

starter.setup({
  items = {
    starter.sections.recent_files(5, true),
    starter.sections.builtin_actions(),
  },
  header = {},
})
