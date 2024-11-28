return {
  -- Other plugins
  {
    'numToStr/FTerm.nvim',
    config = function()
      require('FTerm').setup {
        -- Optional: Change dimensions
        border = 'rounded', -- Can be 'single', 'double', 'solid', 'shadow', or 'rounded'
        dimensions = {
          height = 0.9, -- Height as a proportion of screen height
          width = 0.9, -- Width as a proportion of screen width
        },
      }

      -- Keymaps for toggling the terminal
      vim.keymap.set('n', '<leader>t', '<CMD>lua require("FTerm").toggle()<CR>', { desc = 'Toggle FTerm' })
      -- vim.keymap.set('t', 'C-T', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>', { desc = 'Toggle FTerm' })
    end,
  },
}
