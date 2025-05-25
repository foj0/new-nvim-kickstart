return {
  {
    'stevearc/oil.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      -- Displays a bar showing the filepath when you open oil
      -- Since it doesn't do that unless you open oil in a floating window
      CustomOilBar = function()
        local path = vim.fn.expand '%'
        path = path:gsub('oil://', '')

        return '  ' .. vim.fn.fnamemodify(path, ':.')
      end

      require('oil').setup {
        columns = { 'icon' },
        keymaps = {
          ['<C-h>'] = false,
          ['<C-l>'] = false,
          ['<C-k>'] = false,
          ['<C-j>'] = false,
          ['<M-h>'] = 'actions.select_split',
        },
        win_options = {
          winbar = '%{v:lua.CustomOilBar()}',
        },
        view_options = {
          show_hidden = true,
        },
      }

      -- Open parent directory in current window
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' })

      -- Open parent directory in floating window
      vim.keymap.set('n', '<space>-', require('oil').toggle_float)
    end,
  },

  -- NOTE:
  -- You can preview a file with an oil window open with C-p
  -- You don't really "close" oil (except for the floating window version, that you close by <space>-, the same way you open), but just go into whatever file you wanted to go into and that "closes" oil.
}
