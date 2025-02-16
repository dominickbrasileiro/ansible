return {
  'ThePrimeagen/harpoon',
  config = function()
    require('harpoon').setup {
      menu = {
        width = vim.api.nvim_win_get_width(0) - 120,
      },
    }

    -- Example key mappings for Harpoon
    vim.keymap.set('n', '<leader>a', require('harpoon.mark').add_file, { desc = 'Add file to Harpoon' })

    vim.keymap.set('n', '<leader>m', require('harpoon.ui').toggle_quick_menu, { desc = 'Open Harpoon menu' })

    vim.keymap.set('n', '<leader>1', function()
      require('harpoon.ui').nav_file(1)
    end, { desc = 'Go to first Harpoon mark' })

    vim.keymap.set('n', '<leader>2', function()
      require('harpoon.ui').nav_file(2)
    end, { desc = 'Go to second Harpoon mark' })

    vim.keymap.set('n', '<leader>3', function()
      require('harpoon.ui').nav_file(3)
    end, { desc = 'Go to third Harpoon mark' })

    vim.keymap.set('n', '<leader>4', function()
      require('harpoon.ui').nav_file(4)
    end, { desc = 'Go to fourth Harpoon mark' })
  end,
}
