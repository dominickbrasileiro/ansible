return {
  'github/copilot.vim',
  config = function()
    -- Add any Copilot-specific configuration here, if needed
    vim.g.copilot_no_tab_map = false -- Prevent Copilot from overriding the Tab key
  end,
}
