-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal right<CR>', desc = 'NeoTree reveal right', silent = true },
  },
  opts = {
    filesystem = {
      hijack_netrw_behavior = 'disabled', -- prevent it from opening automatically.
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
